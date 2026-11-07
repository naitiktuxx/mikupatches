import json
import re
import os
import subprocess
import tempfile

SPEC = {
  "version": 2,
  "normalize": {
    "lowercase": True,
    "strip_diacritics": True,
    "collapse_repeated_letters": True,
    "leet_map": { "0": "o", "1": "i", "3": "e", "4": "a", "5": "s", "@": "a", "$": "s" },
    "remove_separators_between_single_letters": True
  },
  "match_mode": "unicode_whole_word_case_insensitive",

  "strong_english": [
    "porn", "porno", "pornography", "pornstar", "pornhub", "xvideos", "xnxx", "xhamster",
    "redtube", "youporn", "spankbang", "xxx", "x-rated", "nsfw", "hentai", "ecchi",
    "erotic", "erotica", "erotik", "softcore", "hardcore", "adult film", "adult video",
    "adults only", "18+", "21+", "r18", "r-18", "nude", "nudes", "nudity", "naked",
    "topless", "striptease", "stripper", "strip club", "orgy", "threesome", "gangbang",
    "bdsm", "bondage", "fetish", "kink", "kinky", "milf", "cumshot", "creampie",
    "blowjob", "handjob", "anal", "squirt", "masturbation", "masturbate", "fingering",
    "deepthroat", "dildo", "vibrator", "sex tape", "sextape", "sex scene", "sex scenes",
    "sexual", "sexy", "sexually explicit", "sex video", "camgirl", "cam girl",
    "onlyfans", "escort", "call girl", "prostitute", "brothel", "incest", "stepmom",
    "stepsister", "stepbrother", "stepdad", "seduction", "seductive", "cheating wife",
    "hot wife", "uncensored", "unrated", "explicit", "sensual", "lingerie",
    "boobs", "tits", "nipple", "nipples", "pussy", "dick", "cock", "horny", "naughty",
    "slut", "whore", "hooker", "playboy", "penthouse", "chaturbate", "stripchat",
    "camsoda", "brazzers", "bangbros", "naughty america", "mia khalifa", "sunny leone",
    "nudist", "naturist", "swinger", "swingers", "sugar daddy", "lap dance", "peepshow",
    "voyeur", "upskirt", "hidden cam", "spy cam", "leaked", "leaked video", "viral mms",
    "oppai", "smut", "lemon", "fanservice", "ero", "sexploitation", "pink film",
    "pinku eiga", "grindhouse", "exploitation"
  ],

  "strong_hinglish": [
    "chudai", "chod", "chodna", "chudasi", "randi", "raand", "lund", "lauda", "loda",
    "gaand", "gand", "bhosdi", "bhosda", "bhosdike", "chut", "choot", "muth", "mutthi",
    "mms", "desi mms", "desi sex", "desi bhabhi", "desi aunty", "hot bhabhi", "hot aunty",
    "hot web series", "adult web series", "18+ web series", "hot scenes", "bold scenes",
    "garam masala", "garam", "romantic hot", "b grade", "b-grade", "bgrade", "c grade",
    "ullu", "kooku", "hotshots", "primeshots", "nuefliks", "fugi", "rabbit movies",
    "boomex", "gupchup", "besharams", "triflicks", "mojflix", "dreams films",
    "charmsukh", "palang tod", "kavita bhabhi", "savita bhabhi", "mastram", "masterani",
    "kamasutra", "kamasutra 3d", "kamukta", "kaamuk", "kamuk", "ashlil", "nanga", "nangi",
    "nangapan", "rasili", "rasbhari", "jawani", "jawaani", "suhagraat", "honeymoon hot",
    "devar bhabhi", "sali", "hot sali", "bhabhi ki", "aunty ki", "padosan hot",
    "teacher student hot", "boss secretary hot", "lady doctor hot", "nurse hot",
    "tamil sex", "telugu sex", "malayalam hot", "mallu", "mallu aunty", "bengali hot",
    "punjabi hot", "bhojpuri hot", "bhojpuri adult", "sexy video", "sexy song",
    "item song hot", "hot dance", "bar dance", "mujra hot", "cabaret"
  ],

  "strong_hindi_devanagari": [
    "सेक्स", "सेक्सी", "सेक्स वीडियो", "सेक्स सीन", "पोर्न", "पॉर्न", "पोर्नोग्राफी",
    "नंगा", "नंगी", "नंगापन", "नग्न", "नग्नता", "अश्लील", "अश्लीलता", "कामुक",
    "कामुकता", "कामसूत्र", "कामवासना", "वासना", "हवस", "हवसी", "चुदाई", "चुदाइ",
    "चोदना", "चोद", "रंडी", "रांड", "लंड", "लौड़ा", "गांड", "गाँड", "भोसड़ी",
    "भोसड़ा", "चूत", "चुत", "मुठ", "हस्तमैथुन", "संभोग", "यौन", "यौन संबंध",
    "वयस्क", "वयस्कों के लिए", "एडल्ट", "एडल्ट फिल्म", "ब्लू फिल्म", "ब्लू मूवी",
    "हॉट", "हॉट सीन", "बोल्ड", "बोल्ड सीन", "गर्म", "गरम मसाला", "मस्तराम",
    "भाभी", "देसी भाभी", "हॉट भाभी", "आंटी", "हॉट आंटी", "देवर भाभी", "साली",
    "बेशर्म", "बेशर्मी", "रसीली", "रसभरी", "जवानी", "सुहागरात", "सुहागरात सीन",
    "एमएमएस", "लीक वीडियो", "वायरल एमएमएस", "कॉल गर्ल", "वेश्या", "वेश्यालय",
    "तवायफ", "मुजरा", "कैबरे", "स्ट्रिप", "स्ट्रिपर", "स्ट्रिप क्लब", "बिकिनी",
    "अंडरवियर", "लिंगरी", "चुम्बन सीन", "किसिंग सीन", "इंटिमेट सीन", "इंटीमेट सीन",
    "अनकट", "अनसेंसर्ड", "अनरेटेड", "कामसूत्र 3डी", "सविता भाभी", "कविता भाभी",
    "उल्लू", "कूकू", "हॉटशॉट्स", "प्राइमशॉट्स", "रैबिट मूवीज़", "चार्मसुख", "पलंग तोड़"
  ],

  "strong_other_indian_scripts_romanized": [
    "kama", "kamam", "kamakathai", "kamakathaikal", "sambhogam", "adult padam",
    "ladies hot", "chitrapat adult", "amar adult", "khula", "bangla hot", "bangla choti"
  ],

  "genre_and_category_blocklist": [
    "adult", "adults", "adult only", "adult content", "adult movie", "adult movies",
    "adult series", "adult animation", "adult video", "18+", "21+", "r18", "r-18",
    "erotic", "erotica", "erotic drama", "erotic thriller", "erotic romance",
    "hentai", "ecchi", "smut", "lemon", "oppai", "fanservice", "ero", "ero anime",
    "mature", "mature content", "mature audience", "mature audiences", "xxx", "nsfw",
    "softcore", "hardcore", "sexploitation", "pink film", "pinku eiga",
    "hot", "bold", "bold series", "bold content", "hot series", "hot movies",
    "uncut", "uncensored", "unrated", "director's cut explicit", "romance 18+",
    "b-grade", "b grade", "c-grade", "web series 18+", "ott adult", "ott 18+",
    "indian adult", "desi adult", "bhabhi series", "aunty series", "mms series",
    "hindi hot", "hindi adult", "hindi 18+", "dubbed adult", "dubbed hot",
    "vadults", "sex comedy", "sex drama", "sexual content", "nudity", "strong sexual content",
    "sexual themes", "sex & nudity", "sexual violence", "graphic sex", "explicit content",
    "18+ hindi", "adult hindi", "bold hindi", "garam", "masala", "romantic erotic",
    "एडल्ट", "वयस्क", "अश्लील", "कामुक", "बोल्ड", "हॉट", "18+ हिंदी", "वयस्क सामग्री"
  ],

  "tag_blocklist": [
    "adult", "nsfw", "18+", "21+", "xxx", "erotic", "erotica", "sex", "sexual", "sexy",
    "nudity", "nude", "topless", "softcore", "hardcore", "fetish", "bdsm", "hentai",
    "ecchi", "smut", "lemon", "oppai", "fanservice", "seduction", "affair", "cheating",
    "hot scenes", "bold scenes", "intimate scenes", "kissing scenes", "bed scenes",
    "love making", "lovemaking", "one night stand", "threesome", "orgy", "stepmom",
    "stepsister", "incest", "taboo", "forbidden love", "sugar daddy", "escort",
    "prostitution", "sex worker", "brothel", "strip club", "stripper", "lingerie",
    "bikini", "mms", "leaked", "viral video", "desi", "bhabhi", "aunty", "devar",
    "hot web series", "bold web series", "ullu", "kooku", "hotshots", "primeshots",
    "सेक्स", "अश्लील", "कामुक", "नग्न", "एडल्ट", "बोल्ड", "हॉट", "भाभी", "आंटी", "एमएमएस"
  ],

  "rating_values_always_block": [
    "NC-17", "X", "XXX", "R18", "R18+", "18+", "21+", "Adults Only", "AO",
    "A", "A (Adult)", "R(A)", "R18+ (Australia)", "TV-MA (sexual)", "Not Rated (Adult)",
    "Unrated (Adult)", "adult", "mature_18"
  ],

  "title_regex_patterns": [
    r"(?i)\b(18\s*\+|21\s*\+|r\s*-?\s*18)\b",
    r"(?i)\bs\W?e\W?x\W?(y|ual)?\b",
    r"(?i)\bp\W?[o0]\W?r\W?n(o)?\b",
    r"(?i)\bn\W?s\W?f\W?w\b",
    r"(?i)\bx{3,}\b",
    r"(?i)\b(hot|bold|adult)\s+(web\s*series|scenes?|movie|movies|video|videos|content)\b",
    r"(?i)\b(bhabhi|aunty|devar|sali)\s+(hot|ki|ka|ke|sex|mms)\b",
    r"(?i)\b(desi|indian|tamil|telugu|mallu|bangla)\s+(sex|mms|hot|adult)\b",
    r"(?i)\b(season|episode|part)\s*\d*\s*(uncut|uncensored|unrated|18\+)\b"
  ],

  "query_block_patterns": [
    r"(?i)(porn|xxx|nsfw|hentai|erotic|nude|naked|sex\s*(video|scene|movie|tape)?|chudai|randi|mms|bhabhi\s*hot|aunty\s*hot|hot\s*web\s*series|18\+)",
    r"(सेक्स|पोर्न|नंगा|नग्न|अश्लील|कामुक|चुदाई|रंडी|ब्लू\s*फिल्म|हॉट\s*भाभी|एडल्ट|एमएमएस)"
  ],

  "allowlist_exceptions": [
    "essex", "sussex", "middlesex", "wessex", "sextet", "sexton", "sextuplets",
    "assassin", "assassin's creed", "class", "classic", "glass", "grass", "pass", "mass",
    "bass", "cockpit", "cocktail", "peacock", "hancock", "dickens", "moby dick",
    "dick tracy", "butter", "button", "butterfly", "analysis", "analyst", "analog",
    "canal", "banal", "scunthorpe", "penistone", "adult swim", "adulthood",
    "adult life", "sex education", "sex and the city", "hot fuzz", "hot wheels",
    "hotel", "hotel transylvania", "hot pursuit", "hot rod", "hotshot",
    "bold and the beautiful", "the bold type", "lemony snicket",
    "lemonade", "sexual health", "sexual harassment", "बोल्ड एंड ब्यूटीफुल",
    "होटल", "सेक्स एजुकेशन", "आंटी जी", "भाभी जी घर पर हैं", "भाभीजी घर पर हैं",
    "देसी गर्ल", "देसी बॉयज़", "गरम धरम"
  ]
}

# Aggregate all blocked terms
all_terms = set()
for key in [
    "strong_english",
    "strong_hinglish",
    "strong_hindi_devanagari",
    "strong_other_indian_scripts_romanized",
    "genre_and_category_blocklist",
    "tag_blocklist",
]:
    for t in SPEC[key]:
        all_terms.add(t.strip().lower())

# Split into single words and phrases
single_words = set()
phrases = set()

for t in sorted(all_terms):
    if any(not (c.isalnum() or ord(c) > 127) for c in t):
        phrases.add(t)
    else:
        single_words.add(t)

allowlist = sorted(set(w.strip().lower() for w in SPEC["allowlist_exceptions"]), key=len, reverse=True)
ratings = sorted(set(SPEC["rating_values_always_block"]))
regex_patterns = SPEC["title_regex_patterns"] + SPEC["query_block_patterns"]

print(f"Total unique blocked terms: {len(all_terms)} (words: {len(single_words)}, phrases: {len(phrases)})")
print(f"Allowlist entries: {len(allowlist)}")
print(f"Always block ratings: {len(ratings)}")
print(f"Regex patterns: {len(regex_patterns)}")

def to_java_string_literal(s):
    res = []
    for c in s:
        if c == '\\':
            res.append('\\\\')
        elif c == '"':
            res.append('\\"')
        elif c == '\n':
            res.append('\\n')
        elif c == '\r':
            res.append('\\r')
        elif c == '\t':
            res.append('\\t')
        elif ord(c) > 127:
            res.append(f'\\u{ord(c):04x}')
        else:
            res.append(c)
    return '"' + ''.join(res) + '"'

# Build Java class source
java_code = f"""package com.miku.filter;

import java.text.Normalizer;
import java.util.*;
import java.util.regex.*;

/**
 * High-performance, zero-overhead NSFW blocklist filter for search suggestions and queries.
 * Generated automatically from NSFW blocklist specification.
 */
public final class NsfwFilter {{

    private static final Set<String> ALLOWLIST_EXACT = new HashSet<String>({len(allowlist)} * 2);
    private static final List<String> ALLOWLIST_PHRASES = new ArrayList<String>({len(allowlist)});
    private static final Set<String> BLOCKED_WORDS = new HashSet<String>({len(single_words)} * 2);
    private static final List<String> BLOCKED_PHRASES = new ArrayList<String>({len(phrases)});
    private static final Set<String> BLOCKED_RATINGS = new HashSet<String>({len(ratings)} * 2);
    private static final List<Pattern> COMPILED_PATTERNS = new ArrayList<Pattern>({len(regex_patterns)});

    private static final Pattern DIACRITICS_PATTERN = Pattern.compile("[\\\\u0300-\\\\u036f]");
    private static final Pattern SINGLE_LETTER_SEP = Pattern.compile("(?<=\\\\b[a-zA-Z0-9])[._\\\\s\\\\-–—/]+(?=[a-zA-Z0-9]\\\\b)");
    private static final Pattern REPEAT_3PLUS_TO_2 = Pattern.compile("(.)\\\\1{{2,}}");
    private static final Pattern REPEAT_2PLUS_TO_1 = Pattern.compile("(.)\\\\1+");
    private static final Pattern WORD_SPLIT_PATTERN = Pattern.compile("[^\\\\p{{L}}\\\\p{{M}}\\\\p{{N}}]+");

    static {{
        // Populate allowlist
"""

for w in allowlist:
    java_code += f"        ALLOWLIST_PHRASES.add({to_java_string_literal(w)});\n"
    java_code += f"        ALLOWLIST_EXACT.add({to_java_string_literal(w)});\n"

java_code += "\n        // Populate blocked single words\n"
for w in sorted(single_words):
    java_code += f"        BLOCKED_WORDS.add({to_java_string_literal(w)});\n"

java_code += "\n        // Populate blocked multi-word phrases\n"
for p in sorted(phrases, key=len, reverse=True):
    java_code += f"        BLOCKED_PHRASES.add({to_java_string_literal(p)});\n"

java_code += "\n        // Populate ratings always blocked\n"
for r in ratings:
    java_code += f"        BLOCKED_RATINGS.add({to_java_string_literal(r.lower())});\n"

java_code += "\n        // Populate compiled regex patterns\n"
for pat in regex_patterns:
    java_code += f"        COMPILED_PATTERNS.add(Pattern.compile({to_java_string_literal(pat)}));\n"

java_code += """    }

    private NsfwFilter() {
        // static only
    }

    /**
     * Checks if the given text matches an allowlist exception.
     */
    public static boolean isAllowlisted(String text) {
        if (text == null) return false;
        String t = text.trim().toLowerCase(Locale.ROOT);
        return ALLOWLIST_EXACT.contains(t);
    }

    /**
     * Masks out allowlist exception phrases with spaces to prevent false positives.
     */
    
    private static boolean isWordChar(char c) {
        if (Character.isLetterOrDigit(c)) return true;
        int type = Character.getType(c);
        return type == Character.NON_SPACING_MARK || type == Character.COMBINING_SPACING_MARK;
    }

    public static String maskAllowlist(String input) {
        if (input == null || input.isEmpty()) return "";
        String s = input.toLowerCase(Locale.ROOT);
        for (String allowed : ALLOWLIST_PHRASES) {
            int idx = s.indexOf(allowed);
            if (idx >= 0) {
                // Word boundary check for allowlisted term
                boolean startOk = (idx == 0) || !isWordChar(s.charAt(idx - 1));
                int endIdx = idx + allowed.length();
                boolean endOk = (endIdx == s.length()) || !isWordChar(s.charAt(endIdx));
                if (startOk && endOk) {
                    s = s.substring(0, idx) + " " + s.substring(endIdx);
                }
            }
        }
        return s;
    }

    /**
     * Normalizes text according to the specification:
     * - lowercase
     * - strip diacritics
     * - remove separators between single letters
     * - leet map (0->o, 1->i, 3->e, 4->a, 5->s, @->a, $->s)
     */
    public static String normalize(String input) {
        if (input == null || input.isEmpty()) return "";

        // 1. Lowercase
        String s = input.toLowerCase(Locale.ROOT);

        // 2. Strip diacritics
        s = Normalizer.normalize(s, Normalizer.Form.NFD);
        s = DIACRITICS_PATTERN.matcher(s).replaceAll("");

        // 3. Remove separators between single letters (e.g. s.e.x -> sex, p_o_r_n -> porn)
        s = s.replace('_', '.');
        String prev = null;
        while (!s.equals(prev)) {
            prev = s;
            s = SINGLE_LETTER_SEP.matcher(s).replaceAll("");
        }

        // 4. Leet map: 0->o, 1->i, 3->e, 4->a, 5->s, @->a, $->s
        char[] chars = s.toCharArray();
        for (int i = 0; i < chars.length; i++) {
            switch (chars[i]) {
                case '0': chars[i] = 'o'; break;
                case '1': chars[i] = 'i'; break;
                case '3': chars[i] = 'e'; break;
                case '4': chars[i] = 'a'; break;
                case '5': chars[i] = 's'; break;
                case '@': chars[i] = 'a'; break;
                case '$': chars[i] = 's'; break;
            }
        }
        return new String(chars);
    }

    /**
     * Checks if a string or query contains NSFW content.
     */
    public static boolean isNsfwText(String rawText) {
        if (rawText == null) return false;
        String text = rawText.trim();
        if (text.isEmpty()) return false;

        // Exact match against allowlist
        String lower = text.toLowerCase(Locale.ROOT);
        if (ALLOWLIST_EXACT.contains(lower)) {
            return false;
        }

        // Mask allowlist exceptions
        String masked = maskAllowlist(text);
        if (masked.trim().isEmpty()) {
            return false;
        }

        // 1. Check raw masked string against regexes and phrases/words
        for (Pattern p : COMPILED_PATTERNS) {
            if (p.matcher(masked).find()) {
                return true;
            }
        }
        if (checkPhrasesAndWords(masked)) {
            return true;
        }

        // 2. Normalize text
        String norm = normalize(masked);

        // 3. Check normalized text against regexes
        for (Pattern p : COMPILED_PATTERNS) {
            if (p.matcher(norm).find()) {
                return true;
            }
        }

        // 4. Check multi-word phrases and single words on normalized text
        if (checkPhrasesAndWords(norm)) {
            return true;
        }

        // 5. Check collapsed repeats (e.g. "boooobs" -> "boobs", "sexxxx" -> "sex")
        String c2 = REPEAT_3PLUS_TO_2.matcher(norm).replaceAll("$1$1");
        if (!c2.equals(norm)) {
            for (Pattern p : COMPILED_PATTERNS) {
                if (p.matcher(c2).find()) return true;
            }
            if (checkPhrasesAndWords(c2)) return true;
        }

        String c1 = REPEAT_2PLUS_TO_1.matcher(norm).replaceAll("$1");
        if (!c1.equals(norm) && !c1.equals(c2)) {
            for (Pattern p : COMPILED_PATTERNS) {
                if (p.matcher(c1).find()) return true;
            }
            if (checkPhrasesAndWords(c1)) return true;
        }

        return false;
    }

    private static boolean checkPhrasesAndWords(String text) {
        if (text == null || text.isEmpty()) return false;

        // Check multi-word phrases with boundary
        for (String phrase : BLOCKED_PHRASES) {
            int idx = text.indexOf(phrase);
            if (idx >= 0) {
                char first = phrase.charAt(0);
                boolean startOk = (idx == 0) || !isWordChar(first) || !isWordChar(text.charAt(idx - 1));
                int endIdx = idx + phrase.length();
                char last = phrase.charAt(phrase.length() - 1);
                boolean endOk = (endIdx == text.length()) || !isWordChar(last) || !isWordChar(text.charAt(endIdx));
                if (startOk && endOk) {
                    return true;
                }
            }
        }

        // Check single words by splitting tokens
        String[] tokens = WORD_SPLIT_PATTERN.split(text);
        for (String token : tokens) {
            if (!token.isEmpty() && BLOCKED_WORDS.contains(token)) {
                return true;
            }
        }

        return false;
    }

    /**
     * Checks if an arbitrary suggestion item, movie object, or rating is NSFW.
     */
    public static boolean isNsfw(Object obj) {
        if (obj == null) return false;
        if (obj instanceof String) {
            return isNsfwText((String) obj);
        }

        Class<?> clazz = obj.getClass();

        // 1. Check getWord() (SuggestEntity, SearchSuggestItem)
        try {
            java.lang.reflect.Method m = clazz.getMethod("getWord");
            Object val = m.invoke(obj);
            if (val instanceof String && isNsfwText((String) val)) {
                return true;
            }
        } catch (Throwable ignored) {}

        // 2. Check getTitle() (HotSearchKeyWord, Subject)
        try {
            java.lang.reflect.Method m = clazz.getMethod("getTitle");
            Object val = m.invoke(obj);
            if (val instanceof String && isNsfwText((String) val)) {
                return true;
            }
        } catch (Throwable ignored) {}

        // 3. Check getContentRating()
        try {
            java.lang.reflect.Method m = clazz.getMethod("getContentRating");
            Object val = m.invoke(obj);
            if (val instanceof String) {
                String rating = ((String) val).trim().toLowerCase(Locale.ROOT);
                if (BLOCKED_RATINGS.contains(rating)) {
                    return true;
                }
            }
        } catch (Throwable ignored) {}

        // 4. Check getRestrictKid()
        try {
            java.lang.reflect.Method m = clazz.getMethod("getRestrictKid");
            Object val = m.invoke(obj);
            if (val instanceof Number && ((Number) val).intValue() > 0) {
                return true;
            }
        } catch (Throwable ignored) {}

        // 5. Check getSubject() (SuggestEntity)
        try {
            java.lang.reflect.Method m = clazz.getMethod("getSubject");
            Object sub = m.invoke(obj);
            if (sub != null && isNsfw(sub)) {
                return true;
            }
        } catch (Throwable ignored) {}

        // 6. Check getStaff() (SuggestEntity)
        try {
            java.lang.reflect.Method m = clazz.getMethod("getStaff");
            Object staff = m.invoke(obj);
            if (staff != null) {
                java.lang.reflect.Method mName = staff.getClass().getMethod("getName");
                Object nameVal = mName.invoke(staff);
                if (nameVal instanceof String && isNsfwText((String) nameVal)) {
                    return true;
                }
            }
        } catch (Throwable ignored) {}

        // 7. Check getGenre()
        try {
            java.lang.reflect.Method m = clazz.getMethod("getGenre");
            Object val = m.invoke(obj);
            if (val instanceof String && isNsfwText((String) val)) {
                return true;
            }
        } catch (Throwable ignored) {}

        // 8. Check getTag()
        try {
            java.lang.reflect.Method m = clazz.getMethod("getTag");
            Object val = m.invoke(obj);
            if (val instanceof String && isNsfwText((String) val)) {
                return true;
            }
        } catch (Throwable ignored) {}

        // 9. Check getCategory()
        try {
            java.lang.reflect.Method m = clazz.getMethod("getCategory");
            Object val = m.invoke(obj);
            if (val instanceof String && isNsfwText((String) val)) {
                return true;
            }
        } catch (Throwable ignored) {}

        // 10. Check getTopicType() (SearchSuggestItem)
        try {
            java.lang.reflect.Method m = clazz.getMethod("getTopicType");
            Object val = m.invoke(obj);
            if (val instanceof String && isNsfwText((String) val)) {
                return true;
            }
        } catch (Throwable ignored) {}

        return false;
    }

    /**
     * Filters any List of suggestion items, returning a new List with NSFW items removed.
     */
    public static <T> List<T> filterList(List<T> list) {
        if (list == null || list.isEmpty()) return list;
        List<T> filtered = new ArrayList<T>(list.size());
        for (T item : list) {
            if (!isNsfw(item)) {
                filtered.add(item);
            }
        }
        return filtered;
    }

    // Specific typed convenience methods for Smali invocations
    public static List filterSuggestEntities(List list) {
        return filterList(list);
    }

    public static List filterSearchSuggestItems(List list) {
        return filterList(list);
    }

    public static List filterHotSearchKeywords(List list) {
        return filterList(list);
    }

    public static List filterHomeHotKeywords(List list) {
        return filterList(list);
    }
}
"""

with open("NsfwFilter.java", "w") as f:
    f.write(java_code)

print("Generated NsfwFilter.java successfully!")

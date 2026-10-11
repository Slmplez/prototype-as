/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.util;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.pde.internal.core.util.PDEHTMLHelper;

public class PDETextHelper {
    public static final String F_DOTS = "...";

    public static String truncateAndTrailOffText(String text, int limit) {
        String trimmed = text.trim();
        int dotsLength = F_DOTS.length();
        int trimmedLength = trimmed.length();
        int limitWithDots = limit - dotsLength;
        if (limit >= trimmedLength) {
            return trimmed;
        }
        if (limit <= dotsLength) {
            return "";
        }
        return String.valueOf(trimmed.substring(0, limitWithDots)) + F_DOTS;
    }

    public static boolean isDefined(String text) {
        return text != null && text.length() != 0;
    }

    public static boolean isDefinedAfterTrim(String text) {
        if (text == null) {
            return false;
        }
        String trimmedText = text.trim();
        return trimmedText.length() != 0;
    }

    public static String translateReadText(String text) {
        if (text == null) {
            return "";
        }
        String result = "";
        String inputText = text.trim();
        int length = inputText.length();
        int previousChar = 32;
        StringBuffer buffer = new StringBuffer(length);
        int i = 0;
        while (i < length) {
            int currentChar = inputText.charAt(i);
            if (currentChar == 13 || currentChar == 10 || currentChar == 9) {
                currentChar = 32;
            }
            if (currentChar == 32) {
                if (previousChar != 32) {
                    buffer.append((char)currentChar);
                    previousChar = currentChar;
                }
            } else {
                buffer.append((char)currentChar);
                previousChar = currentChar;
            }
            ++i;
        }
        result = buffer.toString();
        if (PDEHTMLHelper.isAllWhitespace(result)) {
            return "";
        }
        return result;
    }

    public static String translateWriteText(String text, HashMap substituteChars) {
        return PDETextHelper.translateWriteText(text, null, substituteChars);
    }

    public static String translateWriteText(String text, HashSet tagExceptions, HashMap substituteChars) {
        if (text == null) {
            return "";
        }
        boolean processTagExceptions = false;
        int scanLimit = 0;
        if (tagExceptions != null && !tagExceptions.isEmpty()) {
            processTagExceptions = true;
            scanLimit = PDETextHelper.determineMaxLength(tagExceptions);
        }
        boolean processSubstituteChars = false;
        if (substituteChars != null && !substituteChars.isEmpty()) {
            processSubstituteChars = true;
        }
        StringBuffer buffer = new StringBuffer(text.length());
        IntegerPointer index = new IntegerPointer(0);
        while (index.getInteger() < text.length()) {
            char currentChar = text.charAt(index.getInteger());
            boolean processed = false;
            if (!processed && processTagExceptions) {
                processed = PDETextHelper.processTagExceptions(currentChar, substituteChars, tagExceptions, buffer, scanLimit, text, index);
            }
            if (!processed && processSubstituteChars) {
                processed = PDETextHelper.processSubstituteChars(currentChar, substituteChars, buffer);
            }
            if (!processed) {
                buffer.append(currentChar);
            }
            index.increment();
        }
        return buffer.toString();
    }

    private static boolean processSubstituteChars(char currentChar, HashMap substituteChars, StringBuffer buffer) {
        Character character = new Character(currentChar);
        if (substituteChars.containsKey(character)) {
            String value = (String)substituteChars.get(character);
            if (PDETextHelper.isDefined(value)) {
                buffer.append(value);
            }
            return true;
        }
        return false;
    }

    private static boolean processTagExceptions(char currentChar, HashMap substituteChars, HashSet tagExceptions, StringBuffer buffer, int scanLimit, String text, IntegerPointer index) {
        if (currentChar == '<') {
            int limit = text.length();
            StringBuffer parsedText = new StringBuffer();
            int j = index.getInteger() + 1;
            while (j < limit) {
                char futureChar = text.charAt(j);
                if (futureChar == '>') {
                    String futureBuffer = parsedText.toString();
                    if (PDETextHelper.isValidTagException(tagExceptions, futureBuffer)) {
                        PDETextHelper.processTagExceptionCharacters(substituteChars, buffer, futureBuffer);
                        index.setInteger(j);
                        return true;
                    }
                    return false;
                }
                parsedText.append(futureChar);
                ++j;
            }
        }
        return false;
    }

    private static void processTagExceptionCharacters(HashMap substituteChars, StringBuffer buffer, String text) {
        String tagName = PDETextHelper.getTagName(text);
        boolean trailingSlash = text.endsWith("/");
        String attributeList = text.substring(tagName.length());
        if (!PDETextHelper.isValidTagAttributeList(attributeList)) {
            buffer.append('<');
            buffer.append(tagName);
            if (trailingSlash) {
                buffer.append('/');
            }
            buffer.append('>');
            return;
        }
        if (attributeList.length() == 0) {
            buffer.append('<');
            buffer.append(tagName);
            buffer.append('>');
            return;
        }
        boolean inQuote = false;
        buffer.append('<');
        int i = 0;
        while (i < text.length()) {
            boolean onQuote;
            boolean processed = false;
            char currentChar = text.charAt(i);
            boolean bl = onQuote = currentChar == '\"';
            if (onQuote) {
                inQuote = !inQuote;
            }
            if (inQuote && !onQuote) {
                processed = PDETextHelper.processSubstituteChars(currentChar, substituteChars, buffer);
            }
            if (!processed) {
                buffer.append(currentChar);
            }
            ++i;
        }
        buffer.append('>');
    }

    private static boolean isValidTagException(HashSet tagExceptions, String buffer) {
        String tagName = PDETextHelper.getTagName(buffer);
        return tagExceptions.contains(tagName);
    }

    private static boolean isValidTagAttributeList(String text) {
        String patternString = "^([\\s]+[A-Za-z0-9_:\\-\\.]+[\\s]?=[\\s]?\".+?\")*[\\s]*[/]?$";
        Pattern pattern = Pattern.compile(patternString);
        Matcher matcher = pattern.matcher(text);
        return matcher.find();
    }

    private static String getTagName(String buffer) {
        StringBuffer tagName = new StringBuffer();
        int i = 0;
        while (i < buffer.length()) {
            char character = buffer.charAt(i);
            if (Character.isWhitespace(character)) break;
            tagName.append(character);
            ++i;
        }
        return tagName.toString();
    }

    private static int determineMaxLength(HashSet set) {
        Iterator iterator = set.iterator();
        int maxLength = -1;
        while (iterator.hasNext()) {
            String object = (String)iterator.next();
            if (object.length() <= maxLength) continue;
            maxLength = object.length();
        }
        return maxLength;
    }

    private static class IntegerPointer {
        private int fInteger;

        public IntegerPointer(int integer) {
            this.fInteger = integer;
        }

        public int getInteger() {
            return this.fInteger;
        }

        public void setInteger(int integer) {
            this.fInteger = integer;
        }

        public void increment() {
            ++this.fInteger;
        }
    }
}


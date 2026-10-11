/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 */
package org.eclipse.core.internal.databinding;

import com.ibm.icu.text.MessageFormat;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

public class BindingMessages {
    private static final ResourceBundle bundle = ResourceBundle.getBundle("org.eclipse.core.internal.databinding.messages");
    public static final String INDEX_OUT_OF_RANGE = "IndexOutOfRange";
    public static final String MULTIPLE_PROBLEMS = "MultipleProblems";
    public static final String VALUEBINDING_ERROR_WHILE_SETTING_VALUE = "ValueBinding_ErrorWhileSettingValue";
    public static final String DATE_FORMAT_DATE_TIME = "DateFormat_DateTime";
    public static final String DATEFORMAT_TIME = "DateFormat_Time";
    public static final String VALUE_DELIMITER = "ValueDelimiter";
    public static final String TRUE_STRING_VALUES = "TrueStringValues";
    public static final String FALSE_STRING_VALUES = "FalseStringValues";
    public static final String VALIDATE_NUMBER_OUT_OF_RANGE_ERROR = "Validate_NumberOutOfRangeError";
    public static final String VALIDATE_NUMBER_PARSE_ERROR = "Validate_NumberParseError";
    public static final String VALIDATE_CONVERSION_TO_PRIMITIVE = "Validate_ConversionToPrimitive";
    public static final String VALIDATE_CONVERSION_FROM_CLASS_TO_PRIMITIVE = "Validate_ConversionFromClassToPrimitive";
    public static final String VALIDATE_NO_CHANGE_ALLOWED_HELP = "Validate_NoChangeAllowedHelp";
    public static final String VALIDATE_CHARACTER_HELP = "Validate_CharacterHelp";
    public static final String EXAMPLES = "Examples";
    public static final String VALIDATE_NUMBER_PARSE_ERROR_NO_CHARACTER = "Validate_NumberParseErrorNoCharacter";

    public static String getString(String key) {
        try {
            return bundle.getString(key);
        }
        catch (MissingResourceException missingResourceException) {
            return key;
        }
    }

    public static String formatString(String key, Object[] arguments) {
        try {
            return MessageFormat.format((String)bundle.getString(key), (Object[])arguments);
        }
        catch (MissingResourceException missingResourceException) {
            return key;
        }
    }
}


/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.jaxp.validation;

import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

final class JAXPValidationMessageFormatter {
    JAXPValidationMessageFormatter() {
    }

    public static String formatMessage(Locale locale, String string, Object[] objectArray) throws MissingResourceException {
        String string2;
        ResourceBundle resourceBundle = null;
        resourceBundle = locale != null ? ResourceBundle.getBundle("org.apache.xerces.impl.msg.JAXPValidationMessages", locale) : ResourceBundle.getBundle("org.apache.xerces.impl.msg.JAXPValidationMessages");
        try {
            string2 = resourceBundle.getString(string);
            if (objectArray != null) {
                try {
                    string2 = MessageFormat.format(string2, objectArray);
                }
                catch (Exception exception) {
                    string2 = resourceBundle.getString("FormatFailed");
                    string2 = string2 + " " + resourceBundle.getString(string);
                }
            }
        }
        catch (MissingResourceException missingResourceException) {
            String string3 = resourceBundle.getString("BadMessageKey");
            throw new MissingResourceException(string, string3, string);
        }
        if (string2 == null) {
            string2 = string;
            if (objectArray.length > 0) {
                StringBuffer stringBuffer = new StringBuffer(string2);
                stringBuffer.append('?');
                int n = 0;
                while (n < objectArray.length) {
                    if (n > 0) {
                        stringBuffer.append('&');
                    }
                    stringBuffer.append(String.valueOf(objectArray[n]));
                    ++n;
                }
            }
        }
        return string2;
    }
}


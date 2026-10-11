/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.transaction.internal;

import java.util.Map;
import org.eclipse.emf.transaction.util.BasicTransactionOptionMetadata;
import org.eclipse.emf.transaction.util.ValidateEditSupport;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ValidateEditOption
extends BasicTransactionOptionMetadata {
    public ValidateEditOption() {
        super("validate_edit", true, false, Object.class, Boolean.FALSE);
    }

    @Override
    public boolean sameSetting(Map<?, ?> options1, Map<?, ?> options2) {
        Object value2;
        Object value1 = this.getValue(options1);
        boolean result = this.safeEquals(value1, value2 = this.getValue(options2));
        if (!result) {
            Class<ValidateEditSupport.Default> vesd = ValidateEditSupport.Default.class;
            if (value1 instanceof Boolean) {
                if (((Boolean)value1).booleanValue()) {
                    result = this.safeClass(value2) == vesd;
                }
            } else if (this.safeClass(value1) == vesd) {
                result = Boolean.TRUE.equals(value2) || this.safeClass(value2) == vesd;
            }
        }
        return result;
    }
}


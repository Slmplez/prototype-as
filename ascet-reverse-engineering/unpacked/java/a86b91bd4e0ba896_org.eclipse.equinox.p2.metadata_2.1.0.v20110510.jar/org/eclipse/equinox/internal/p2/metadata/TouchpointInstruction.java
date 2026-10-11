/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.util.Map;
import org.eclipse.equinox.p2.metadata.ITouchpointInstruction;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TouchpointInstruction
implements ITouchpointInstruction {
    private final String body;
    private final String importAttribute;

    public static String encodeAction(String actionName, Map<String, String> parameters) {
        StringBuffer result = new StringBuffer(actionName);
        result.append('(');
        boolean first = true;
        for (Map.Entry<String, String> entry : parameters.entrySet()) {
            if (first) {
                first = false;
            } else {
                result.append(',');
            }
            result.append(entry.getKey());
            result.append(':');
            TouchpointInstruction.appendEncoded(result, entry.getValue());
        }
        result.append(')').append(';');
        return result.toString();
    }

    private static void appendEncoded(StringBuffer buf, String value) {
        char[] chars = value.toCharArray();
        int i = 0;
        while (i < chars.length) {
            switch (chars[i]) {
                case '$': 
                case ',': 
                case ':': 
                case ';': 
                case '{': 
                case '}': {
                    buf.append("${#").append(Integer.toString(chars[i])).append('}');
                    break;
                }
                default: {
                    buf.append(chars[i]);
                }
            }
            ++i;
        }
    }

    public TouchpointInstruction(String body, String importAttribute) {
        this.body = body;
        this.importAttribute = importAttribute;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof ITouchpointInstruction)) {
            return false;
        }
        ITouchpointInstruction other = (ITouchpointInstruction)obj;
        if (this.body == null ? other.getBody() != null : !this.body.equals(other.getBody())) {
            return false;
        }
        return !(this.importAttribute == null ? other.getImportAttribute() != null : !this.importAttribute.equals(other.getImportAttribute()));
    }

    @Override
    public String getBody() {
        return this.body;
    }

    @Override
    public String getImportAttribute() {
        return this.importAttribute;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.body == null ? 0 : this.body.hashCode());
        result = 31 * result + (this.importAttribute == null ? 0 : this.importAttribute.hashCode());
        return result;
    }

    public String toString() {
        return new StringBuffer("Instruction[").append(this.body).append(',').append(this.importAttribute).append(']').toString();
    }
}


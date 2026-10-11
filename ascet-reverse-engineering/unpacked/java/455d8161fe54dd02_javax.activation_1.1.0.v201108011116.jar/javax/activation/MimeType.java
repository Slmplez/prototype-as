/*
 * Decompiled with CFR 0.152.
 */
package javax.activation;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import javax.activation.MimeTypeParameterList;
import javax.activation.MimeTypeParseException;

public class MimeType
implements Externalizable {
    private static final String SPECIALS = "()<>@,;:\\\"/[]?=";
    private String primaryType = "application";
    private String subType = "*";
    private final MimeTypeParameterList parameterList = new MimeTypeParameterList();

    static boolean isSpecial(char c) {
        return Character.isWhitespace(c) || Character.isISOControl(c) || SPECIALS.indexOf(c) != -1;
    }

    public MimeType() {
    }

    public MimeType(String rawdata) throws MimeTypeParseException {
        this.parseMimeType(rawdata);
    }

    public MimeType(String primary, String sub) throws MimeTypeParseException {
        this.setPrimaryType(primary);
        this.setSubType(sub);
    }

    public String getPrimaryType() {
        return this.primaryType;
    }

    public void setPrimaryType(String primary) throws MimeTypeParseException {
        this.primaryType = MimeType.parseToken(primary);
    }

    public String getSubType() {
        return this.subType;
    }

    public void setSubType(String sub) throws MimeTypeParseException {
        this.subType = MimeType.parseToken(sub);
    }

    public MimeTypeParameterList getParameters() {
        return this.parameterList;
    }

    public String getParameter(String name) {
        return this.parameterList.get(name);
    }

    public void setParameter(String name, String value) {
        this.parameterList.set(name, value);
    }

    public void removeParameter(String name) {
        this.parameterList.remove(name);
    }

    public String toString() {
        return this.getBaseType() + this.parameterList.toString();
    }

    public String getBaseType() {
        return this.getPrimaryType() + '/' + this.getSubType();
    }

    public boolean match(MimeType type) {
        if (!this.primaryType.equals(type.primaryType)) {
            return false;
        }
        if ("*".equals(this.subType)) {
            return true;
        }
        if ("*".equals(type.subType)) {
            return true;
        }
        return this.subType.equals(type.subType);
    }

    public boolean match(String rawdata) throws MimeTypeParseException {
        return this.match(new MimeType(rawdata));
    }

    public void writeExternal(ObjectOutput out) throws IOException {
        out.writeUTF(this.toString());
        out.flush();
    }

    public void readExternal(ObjectInput in) throws IOException, ClassNotFoundException {
        try {
            this.parseMimeType(in.readUTF());
        }
        catch (MimeTypeParseException mtpex) {
            throw new IOException(mtpex.getMessage());
        }
    }

    private void parseMimeType(String rawData) throws MimeTypeParseException {
        int index = rawData.indexOf(47);
        if (index == -1) {
            throw new MimeTypeParseException("Expected '/'");
        }
        this.setPrimaryType(rawData.substring(0, index));
        int index2 = rawData.indexOf(59, index + 1);
        if (index2 == -1) {
            this.setSubType(rawData.substring(index + 1));
        } else {
            this.setSubType(rawData.substring(index + 1, index2));
            this.parameterList.parse(rawData.substring(index2));
        }
    }

    private static String parseToken(String tokenString) throws MimeTypeParseException {
        tokenString = tokenString.trim();
        for (int i = 0; i < tokenString.length(); ++i) {
            char c = tokenString.charAt(i);
            if (!MimeType.isSpecial(c)) continue;
            throw new MimeTypeParseException("Special '" + c + "' not allowed in token");
        }
        return tokenString;
    }
}


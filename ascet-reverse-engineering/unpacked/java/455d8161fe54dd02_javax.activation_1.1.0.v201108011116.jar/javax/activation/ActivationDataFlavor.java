/*
 * Decompiled with CFR 0.152.
 */
package javax.activation;

import java.awt.datatransfer.DataFlavor;
import java.io.InputStream;
import javax.activation.MimeType;
import javax.activation.MimeTypeParseException;

public class ActivationDataFlavor
extends DataFlavor {
    private final Class representationClass;
    private final String mimeType;
    private String humanPresentableName;

    public ActivationDataFlavor(Class representationClass, String mimeType, String humanPresentableName) {
        this.representationClass = representationClass;
        this.mimeType = mimeType;
        this.humanPresentableName = humanPresentableName;
    }

    public ActivationDataFlavor(Class representationClass, String humanPresentableName) {
        this.representationClass = representationClass;
        this.mimeType = "application/x-java-serialized-object";
        this.humanPresentableName = humanPresentableName;
    }

    public ActivationDataFlavor(String mimeType, String humanPresentableName) {
        this.mimeType = mimeType;
        this.representationClass = InputStream.class;
        this.humanPresentableName = humanPresentableName;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public Class getRepresentationClass() {
        return this.representationClass;
    }

    public String getHumanPresentableName() {
        return this.humanPresentableName;
    }

    public void setHumanPresentableName(String humanPresentableName) {
        this.humanPresentableName = humanPresentableName;
    }

    public boolean equals(DataFlavor dataFlavor) {
        return this.isMimeTypeEqual(dataFlavor.getMimeType()) && this.representationClass == dataFlavor.getRepresentationClass();
    }

    public boolean isMimeTypeEqual(String mimeType) {
        try {
            MimeType thisType = new MimeType(this.mimeType);
            MimeType thatType = new MimeType(mimeType);
            return thisType.match(thatType);
        }
        catch (MimeTypeParseException e) {
            return false;
        }
    }

    protected String normalizeMimeTypeParameter(String parameterName, String parameterValue) {
        return parameterName + "=" + parameterValue;
    }

    protected String normalizeMimeType(String mimeType) {
        return mimeType;
    }
}


/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.swt.graphics.Image;

public final class ContextInformation
implements IContextInformation {
    private final String fContextDisplayString;
    private final String fInformationDisplayString;
    private final Image fImage;

    public ContextInformation(String contextDisplayString, String informationDisplayString) {
        this(null, contextDisplayString, informationDisplayString);
    }

    public ContextInformation(Image image, String contextDisplayString, String informationDisplayString) {
        Assert.isNotNull((Object)informationDisplayString);
        this.fImage = image;
        this.fContextDisplayString = contextDisplayString;
        this.fInformationDisplayString = informationDisplayString;
    }

    public boolean equals(Object object) {
        if (object instanceof IContextInformation) {
            IContextInformation contextInformation = (IContextInformation)object;
            boolean equals = this.fInformationDisplayString.equalsIgnoreCase(contextInformation.getInformationDisplayString());
            if (this.fContextDisplayString != null) {
                equals = equals && this.fContextDisplayString.equalsIgnoreCase(contextInformation.getContextDisplayString());
            }
            return equals;
        }
        return false;
    }

    public int hashCode() {
        int low = this.fContextDisplayString != null ? this.fContextDisplayString.hashCode() : 0;
        return this.fInformationDisplayString.hashCode() << 16 | low;
    }

    public String getInformationDisplayString() {
        return this.fInformationDisplayString;
    }

    public Image getImage() {
        return this.fImage;
    }

    public String getContextDisplayString() {
        if (this.fContextDisplayString != null) {
            return this.fContextDisplayString;
        }
        return this.fInformationDisplayString;
    }
}


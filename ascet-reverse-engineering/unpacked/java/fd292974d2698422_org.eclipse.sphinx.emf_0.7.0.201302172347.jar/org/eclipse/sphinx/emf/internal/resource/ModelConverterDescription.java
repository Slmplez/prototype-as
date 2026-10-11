/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.sphinx.emf.internal.resource;

import org.eclipse.sphinx.emf.resource.IModelConverterDescription;

public class ModelConverterDescription
implements IModelConverterDescription {
    private static final String EMPTY_STRING = "";
    private static final String NO_DETAILS_AVAILABLE_TEXT = "No details on the model converter's behavior is provided.";
    private String fBehaviorDetails;
    private String fWarning;

    public ModelConverterDescription(String behaviorDetails, String warning) {
        this.fBehaviorDetails = behaviorDetails;
        this.fWarning = warning;
    }

    public String getBehaviorDetails() {
        if (this.fBehaviorDetails == null) {
            return NO_DETAILS_AVAILABLE_TEXT;
        }
        return this.fBehaviorDetails;
    }

    public String getWarning() {
        return this.fWarning;
    }

    public boolean isEmpty() {
        return !this.hasWarning() && !this.hasBehaviorDetails();
    }

    public boolean hasBehaviorDetails() {
        return !this.isEmpty(this.getBehaviorDetails());
    }

    public boolean hasWarning() {
        return !this.isEmpty(this.getWarning());
    }

    private boolean isEmpty(String string) {
        if (string == null) {
            return true;
        }
        return string.trim().equals(EMPTY_STRING);
    }
}


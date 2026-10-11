/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.StyledTextPrintOptions
 */
package org.eclipse.jface.text;

import org.eclipse.swt.custom.StyledTextPrintOptions;

public interface ITextViewerExtension8 {
    public void print(StyledTextPrintOptions var1);

    public void setHoverEnrichMode(EnrichMode var1);

    public static final class EnrichMode {
        public static final EnrichMode AFTER_DELAY = new EnrichMode("after delay");
        public static final EnrichMode IMMEDIATELY = new EnrichMode("immediately");
        public static final EnrichMode ON_CLICK = new EnrichMode("on click");
        private String fName;

        private EnrichMode(String name) {
            this.fName = name;
        }

        public String toString() {
            return this.fName;
        }
    }
}


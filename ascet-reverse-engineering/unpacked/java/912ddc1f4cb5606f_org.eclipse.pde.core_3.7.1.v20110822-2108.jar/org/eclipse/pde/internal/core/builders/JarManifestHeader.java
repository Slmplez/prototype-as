/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.core.builders;

import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.builders.IHeader;
import org.eclipse.pde.internal.core.builders.JarManifestErrorReporter;
import org.osgi.framework.BundleException;

public class JarManifestHeader
implements IHeader {
    private JarManifestErrorReporter fErrorReporter;
    private int fLineNumber;
    private int fLines;
    private ManifestElement[] fManifestElements;
    private String fName;
    private String fValue;

    public JarManifestHeader(String name, String value, int lineNumber, JarManifestErrorReporter errorReporter) {
        this.fName = name;
        this.fValue = value;
        this.fLineNumber = lineNumber;
        this.fErrorReporter = errorReporter;
        this.fLines = 1;
    }

    public void append(String value) {
        this.fValue = String.valueOf(this.fValue) + value;
        ++this.fLines;
    }

    public ManifestElement[] getElements() {
        if (this.fManifestElements == null) {
            if (this.getValue().trim().length() > 0) {
                try {
                    this.fManifestElements = ManifestElement.parseHeader((String)this.getName(), (String)this.getValue());
                }
                catch (BundleException bundleException) {
                    this.fManifestElements = new ManifestElement[0];
                    if (this.fErrorReporter != null) {
                        String message = NLS.bind((String)PDECoreMessages.BundleErrorReporter_parseHeader, (Object)this.getName());
                        this.fErrorReporter.report(message, this.getLineNumber() + 1, 0, "fatal");
                    }
                }
            } else {
                this.fManifestElements = new ManifestElement[0];
            }
        }
        return this.fManifestElements;
    }

    public int getLineNumber() {
        return this.fLineNumber;
    }

    public int getLinesSpan() {
        return this.fLines;
    }

    public String getName() {
        return this.fName;
    }

    public String getValue() {
        return this.fValue;
    }

    public String toString() {
        return String.valueOf(this.fName) + "=" + this.fValue;
    }
}


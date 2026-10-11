/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.pde.internal.core.text.bundle;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.pde.internal.core.bundle.BundleObject;
import org.eclipse.pde.internal.core.bundle.BundlePluginBase;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;
import org.eclipse.pde.internal.core.text.IEditingModel;

public class ManifestHeader
extends BundleObject
implements IManifestHeader {
    private static final long serialVersionUID = 1L;
    private int fOffset = -1;
    private int fLength = -1;
    protected String fName;
    protected String fValue;
    protected transient IBundle fBundle;
    protected String fLineDelimiter;

    public ManifestHeader() {
    }

    public ManifestHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        this.fName = name;
        this.fBundle = bundle;
        this.fLineDelimiter = lineDelimiter;
        this.processValue(value);
        this.setModel(this.fBundle.getModel());
    }

    protected void processValue(String value) {
        this.fValue = value;
    }

    public String getLineLimiter() {
        return this.fLineDelimiter;
    }

    public void setName(String name) {
        this.fName = name;
    }

    public String getName() {
        return this.fName;
    }

    public String getValue() {
        return this.fValue;
    }

    public void setValue(String value) {
        String old = this.fValue;
        this.fValue = value;
        this.fBundle.getModel().fireModelObjectChanged(this, this.getName(), old, value);
    }

    public void setOffset(int offset) {
        this.fOffset = offset;
    }

    public int getOffset() {
        return this.fOffset;
    }

    public void setLength(int length) {
        this.fLength = length;
    }

    public int getLength() {
        return this.fLength;
    }

    public String write() {
        StringBuffer sb = new StringBuffer(this.fName);
        sb.append(": ");
        try {
            int line;
            IDocument doc;
            String text;
            IBundleModel model;
            if (this.fOffset != -1 && (model = this.fBundle.getModel()) instanceof IEditingModel && (text = (doc = ((IEditingModel)((Object)model)).getDocument()).get(this.fOffset, doc.getLineLength(line = doc.getLineOfOffset(this.fOffset))).trim()).length() == this.fName.length() + 1) {
                sb.append(this.fLineDelimiter);
                sb.append(" ");
            }
        }
        catch (BadLocationException badLocationException) {}
        sb.append(this.getValue());
        sb.append(this.fLineDelimiter);
        return sb.toString();
    }

    public void write(String indent, PrintWriter writer) {
    }

    public void setBundle(IBundle bundle) {
        this.fBundle = bundle;
    }

    public IBundle getBundle() {
        return this.fBundle;
    }

    public String getKey() {
        return this.getName();
    }

    public void setKey(String key) throws CoreException {
        this.setName(key);
    }

    protected int getManifestVersion() {
        return BundlePluginBase.getBundleManifestVersion(this.fBundle);
    }

    public void update() {
    }

    public void update(boolean notify) {
    }
}


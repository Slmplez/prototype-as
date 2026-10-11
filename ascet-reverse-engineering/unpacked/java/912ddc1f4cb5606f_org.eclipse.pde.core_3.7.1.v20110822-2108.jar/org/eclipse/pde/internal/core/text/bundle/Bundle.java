/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.pde.internal.core.text.bundle;

import java.util.Iterator;
import java.util.Map;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;
import org.eclipse.pde.internal.core.text.IDocumentKey;
import org.eclipse.pde.internal.core.text.bundle.BundleModel;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.util.HeaderMap;

public class Bundle
implements IBundle {
    private BundleModel fModel;
    private Map fDocumentHeaders = new HeaderMap();

    public Bundle(BundleModel model) {
        this.fModel = model;
    }

    public void clearHeaders() {
        this.fDocumentHeaders.clear();
    }

    public void load(Map headers) {
        IManifestHeader header;
        String value;
        String key;
        Iterator iter = headers.keySet().iterator();
        while (iter.hasNext()) {
            key = iter.next().toString();
            if (!key.equals("Bundle-ManifestVersion")) continue;
            value = headers.get(key).toString();
            header = this.fModel.getFactory().createHeader(key.toString(), value);
            this.fDocumentHeaders.put(key.toString(), header);
            break;
        }
        iter = headers.keySet().iterator();
        while (iter.hasNext()) {
            key = iter.next().toString();
            if (key.equals("Bundle-ManifestVersion")) continue;
            value = headers.get(key).toString();
            header = this.fModel.getFactory().createHeader(key.toString(), value);
            this.fDocumentHeaders.put(key.toString(), header);
        }
        this.adjustOffsets(this.fModel.getDocument());
    }

    public void clearOffsets() {
        Iterator iter = this.fDocumentHeaders.values().iterator();
        while (iter.hasNext()) {
            ManifestHeader header = (ManifestHeader)iter.next();
            header.setOffset(-1);
            header.setLength(-1);
        }
    }

    protected void adjustOffsets(IDocument document) {
        int lines = document.getNumberOfLines();
        try {
            IDocumentKey currentKey = null;
            int i = 0;
            while (i < lines) {
                int index;
                String name;
                int offset = document.getLineOffset(i);
                int length = document.getLineLength(i);
                String line = document.get(offset, length);
                if (currentKey != null) {
                    int lineNumber = line.startsWith(" ") ? i : i - 1;
                    IRegion region = document.getLineInformation(lineNumber);
                    String delimiter = document.getLineDelimiter(lineNumber);
                    int keyLength = region.getOffset() + region.getLength() - currentKey.getOffset();
                    currentKey.setLength(delimiter != null ? keyLength + delimiter.length() : keyLength);
                    if (!line.startsWith(" ")) {
                        currentKey = null;
                    }
                }
                if (currentKey == null && (currentKey = (IDocumentKey)this.fDocumentHeaders.get(name = (index = line.indexOf(58)) != -1 ? line.substring(0, index) : line)) != null) {
                    IRegion region = document.getLineInformation(i);
                    currentKey.setOffset(region.getOffset());
                    String delimiter = document.getLineDelimiter(i);
                    currentKey.setLength(delimiter != null ? region.getLength() + delimiter.length() : region.getLength());
                }
                ++i;
            }
        }
        catch (BadLocationException badLocationException) {}
    }

    public void setHeader(String key, String value) {
        IManifestHeader header = (ManifestHeader)this.fDocumentHeaders.get(key);
        String old = null;
        if (header == null) {
            header = this.getModel().getFactory().createHeader(key, value);
            this.fDocumentHeaders.put(key, header);
            this.fModel.fireModelObjectChanged(header, key, old, value);
        } else {
            old = header.getValue();
            header.setValue(value);
        }
    }

    public String getHeader(String key) {
        ManifestHeader header = (ManifestHeader)this.fDocumentHeaders.get(key);
        return header != null ? header.getValue() : null;
    }

    public IManifestHeader getManifestHeader(String key) {
        return (ManifestHeader)this.fDocumentHeaders.get(key);
    }

    public Map getHeaders() {
        return this.fDocumentHeaders;
    }

    public IBundleModel getModel() {
        return this.fModel;
    }

    public String getLocalization() {
        String localization = this.getHeader("Bundle-Localization");
        return localization != null ? localization : "OSGI-INF/l10n/bundle";
    }

    public void setLocalization(String localization) {
        this.setHeader("Bundle-Localization", localization);
    }

    public void renameHeader(String key, String newKey) {
        ManifestHeader header = (ManifestHeader)this.getManifestHeader(key);
        if (header != null) {
            header.setName(newKey);
            this.fDocumentHeaders.put(newKey, this.fDocumentHeaders.remove(key));
        }
        this.fModel.fireModelObjectChanged(header, newKey, key, newKey);
    }
}


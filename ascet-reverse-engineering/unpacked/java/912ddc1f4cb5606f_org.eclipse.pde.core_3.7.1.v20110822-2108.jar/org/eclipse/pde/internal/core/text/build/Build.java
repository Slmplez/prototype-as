/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.pde.internal.core.text.build;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.internal.core.text.IDocumentKey;
import org.eclipse.pde.internal.core.text.IDocumentRange;
import org.eclipse.pde.internal.core.text.build.BuildEntry;
import org.eclipse.pde.internal.core.text.build.BuildModel;
import org.eclipse.pde.internal.core.util.PropertiesUtil;

public class Build
implements IBuild {
    private BuildModel fModel;
    private HashMap fEntries = new HashMap();

    public Build(BuildModel model) {
        this.fModel = model;
    }

    public void add(IBuildEntry entry) throws CoreException {
        this.fEntries.put(entry.getName(), entry);
        this.fModel.fireModelChanged(new ModelChangedEvent(this.fModel, 1, new Object[]{entry}, null));
    }

    public IBuildEntry[] getBuildEntries() {
        return this.fEntries.values().toArray(new IBuildEntry[this.fEntries.size()]);
    }

    public IBuildEntry getEntry(String name) {
        return (IBuildEntry)this.fEntries.get(name);
    }

    public void remove(IBuildEntry entry) throws CoreException {
        if (this.fEntries.remove(entry.getName()) != null) {
            this.fModel.fireModelChanged(new ModelChangedEvent(this.fModel, 2, new Object[]{entry}, null));
        }
    }

    public void write(String indent, PrintWriter writer) {
    }

    public void load(InputStream source) throws IOException {
        this.fEntries.clear();
        Properties properties = new Properties();
        properties.load(source);
        Enumeration keys = properties.keys();
        while (keys.hasMoreElements()) {
            String name = keys.nextElement().toString();
            BuildEntry entry = (BuildEntry)this.fModel.getFactory().createEntry(name);
            entry.processEntry(properties.get(name).toString());
            this.fEntries.put(name, entry);
        }
        this.adjustOffsets(this.fModel.getDocument());
    }

    public void adjustOffsets(IDocument document) {
        int lines = document.getNumberOfLines();
        try {
            IDocumentRange currentKey = null;
            int i = 0;
            while (i < lines) {
                int length;
                int offset = document.getLineOffset(i);
                String line = document.get(offset, length = document.getLineLength(i));
                if (line.startsWith("#") | line.startsWith("!")) {
                    if (currentKey != null) {
                        currentKey.setLength(offset - 1 - currentKey.getOffset());
                        currentKey = null;
                    }
                } else if ((line = line.trim()).length() == 0) {
                    if (currentKey != null && i == lines - 1) {
                        currentKey.setLength(offset - 1 - currentKey.getOffset());
                        currentKey = null;
                    }
                } else if (currentKey != null) {
                    if (!line.endsWith("\\")) {
                        currentKey.setLength(offset + document.getLineLength(i) - currentKey.getOffset());
                        currentKey = null;
                    }
                } else {
                    String propertyKey;
                    int index = line.indexOf(61);
                    if (index == -1) {
                        index = line.indexOf(58);
                    }
                    if (index == -1) {
                        index = line.indexOf(32);
                    }
                    if (index == -1) {
                        index = line.indexOf(9);
                    }
                    String name = index != -1 ? line.substring(0, index).trim() : line;
                    try {
                        propertyKey = PropertiesUtil.windEscapeChars(name);
                    }
                    catch (IllegalArgumentException illegalArgumentException) {
                        propertyKey = name;
                    }
                    currentKey = (IDocumentKey)((Object)this.getEntry(propertyKey));
                    if (currentKey != null) {
                        while (Character.isSpaceChar(document.getChar(offset))) {
                            ++offset;
                        }
                        currentKey.setOffset(offset);
                        if (!line.endsWith("\\")) {
                            currentKey.setLength(document.getLineOffset(i) + document.getLineLength(i) - currentKey.getOffset());
                            currentKey = null;
                        }
                    }
                }
                ++i;
            }
        }
        catch (BadLocationException badLocationException) {}
    }

    public BuildModel getModel() {
        return this.fModel;
    }
}


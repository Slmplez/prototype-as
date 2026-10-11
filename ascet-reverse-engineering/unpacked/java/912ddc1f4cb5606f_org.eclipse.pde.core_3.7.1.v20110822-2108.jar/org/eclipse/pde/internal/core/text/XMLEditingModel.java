/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.pde.internal.core.text;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.text.IDocument;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.internal.core.NLResourceHelper;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.text.AbstractEditingModel;
import org.eclipse.pde.internal.core.util.SAXParserWrapper;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public abstract class XMLEditingModel
extends AbstractEditingModel {
    private IStatus status;

    public XMLEditingModel(IDocument document, boolean isReconciling) {
        super(document, isReconciling);
    }

    public void load(InputStream source, boolean outOfSync) {
        try {
            this.fLoaded = true;
            this.status = new Status(0, "org.eclipse.pde.core", null);
            SAXParserWrapper parser = new SAXParserWrapper();
            parser.parse(source, this.createDocumentHandler(this, true));
        }
        catch (SAXException e) {
            this.fLoaded = false;
            this.status = new Status(4, "org.eclipse.pde.core", e.getMessage(), (Throwable)e);
        }
        catch (IOException iOException) {
            this.fLoaded = false;
        }
        catch (ParserConfigurationException parserConfigurationException) {
            this.fLoaded = false;
        }
        catch (FactoryConfigurationError factoryConfigurationError) {
            this.fLoaded = false;
        }
    }

    public IStatus getStatus() {
        return this.status;
    }

    protected abstract DefaultHandler createDocumentHandler(IModel var1, boolean var2);

    public void adjustOffsets(IDocument document) {
        try {
            SAXParserWrapper parser = new SAXParserWrapper();
            parser.parse(this.getInputStream(document), this.createDocumentHandler(this, false));
        }
        catch (SAXException sAXException) {
        }
        catch (IOException iOException) {
        }
        catch (ParserConfigurationException parserConfigurationException) {
        }
        catch (FactoryConfigurationError factoryConfigurationError) {}
    }

    private boolean isResourceFile() {
        if (this.getUnderlyingResource() == null) {
            return false;
        }
        return this.getUnderlyingResource() instanceof IFile;
    }

    public void save() {
        if (!this.isResourceFile()) {
            return;
        }
        try {
            IFile file = (IFile)this.getUnderlyingResource();
            String contents = this.getContents();
            ByteArrayInputStream stream = new ByteArrayInputStream(contents.getBytes("UTF8"));
            if (file.exists()) {
                file.setContents((InputStream)stream, false, false, null);
            } else {
                file.create((InputStream)stream, false, null);
            }
            stream.close();
        }
        catch (CoreException e) {
            PDECore.logException(e);
        }
        catch (IOException iOException) {}
    }

    public void reload() {
        if (!this.isResourceFile()) {
            return;
        }
        IFile file = (IFile)this.getUnderlyingResource();
        if (file.exists()) {
            BufferedInputStream stream = null;
            try {
                stream = new BufferedInputStream(file.getContents(true));
                this.reload(stream, false);
                this.setDirty(false);
            }
            catch (CoreException coreException) {}
        }
    }

    public void reload(IDocument document) {
        String text = document.get();
        ByteArrayInputStream stream = null;
        try {
            stream = new ByteArrayInputStream(text.getBytes("UTF8"));
            this.reload(stream, false);
            this.setDirty(false);
        }
        catch (UnsupportedEncodingException e) {
            PDECore.logException(e);
        }
        catch (CoreException coreException) {}
    }

    public String getContents() {
        StringWriter swriter = new StringWriter();
        PrintWriter writer = new PrintWriter(swriter);
        this.setLoaded(true);
        this.save(writer);
        writer.flush();
        try {
            swriter.close();
        }
        catch (IOException iOException) {}
        return swriter.toString();
    }

    public void save(PrintWriter writer) {
        if (this.isLoaded()) {
            this.getRoot().write("", writer);
        }
        this.setDirty(false);
    }

    protected NLResourceHelper createNLResourceHelper() {
        return null;
    }

    protected abstract IWritable getRoot();
}


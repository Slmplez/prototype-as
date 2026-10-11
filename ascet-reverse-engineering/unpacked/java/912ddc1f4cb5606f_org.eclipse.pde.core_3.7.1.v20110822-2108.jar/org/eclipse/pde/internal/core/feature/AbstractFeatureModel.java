/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.feature;

import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.internal.core.AbstractNLModel;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.XMLCopyrightHandler;
import org.eclipse.pde.internal.core.XMLDefaultHandler;
import org.eclipse.pde.internal.core.feature.Feature;
import org.eclipse.pde.internal.core.feature.FeatureFactory;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.ifeature.IFeatureModelFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public abstract class AbstractFeatureModel
extends AbstractNLModel
implements IFeatureModel {
    private static final long serialVersionUID = 1L;
    protected transient Feature feature;
    private transient IFeatureModelFactory factory;
    private boolean enabled = true;

    public IFeature getFeature() {
        if (this.feature == null) {
            Feature f = new Feature();
            f.model = this;
            this.feature = f;
        }
        return this.feature;
    }

    public IFeatureModelFactory getFactory() {
        if (this.factory == null) {
            this.factory = new FeatureFactory(this);
        }
        return this.factory;
    }

    public String getInstallLocation() {
        return null;
    }

    public boolean isEditable() {
        return true;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void load(InputStream stream, boolean outOfSync) throws CoreException {
        try {
            SAXParser parser = this.getSaxParser();
            XMLDefaultHandler handler = new XMLDefaultHandler();
            XMLCopyrightHandler chandler = new XMLCopyrightHandler(handler);
            parser.setProperty("http://xml.org/sax/properties/lexical-handler", chandler);
            parser.parse(stream, (DefaultHandler)handler);
            if (handler.isPrepared()) {
                this.processDocument(handler.getDocument());
                String copyright = chandler.getCopyright();
                if (copyright != null) {
                    this.feature.setCopyright(copyright);
                }
                this.setLoaded(true);
                if (!outOfSync) {
                    this.updateTimeStamp();
                }
            }
        }
        catch (SAXException sAXException) {
        }
        catch (Exception e) {
            PDECore.logException(e);
        }
    }

    public boolean isValid() {
        if (!this.isLoaded()) {
            return false;
        }
        IFeature feature = this.getFeature();
        return feature != null && feature.isValid();
    }

    private void processDocument(Document doc) {
        Element rootNode = doc.getDocumentElement();
        if (this.feature == null) {
            this.feature = new Feature();
            this.feature.model = this;
        } else {
            this.feature.reset();
        }
        this.feature.parse(rootNode);
    }

    public void reload(InputStream stream, boolean outOfSync) throws CoreException {
        if (this.feature != null) {
            this.feature.reset();
        }
        this.load(stream, outOfSync);
        this.fireModelChanged(new ModelChangedEvent(this, 99, new Object[]{this.feature}, null));
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }
}


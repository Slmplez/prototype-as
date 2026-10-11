/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.site;

import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.internal.core.AbstractModel;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.XMLDefaultHandler;
import org.eclipse.pde.internal.core.isite.ISite;
import org.eclipse.pde.internal.core.isite.ISiteModel;
import org.eclipse.pde.internal.core.isite.ISiteModelFactory;
import org.eclipse.pde.internal.core.site.Site;
import org.eclipse.pde.internal.core.site.SiteModelFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.helpers.DefaultHandler;

public abstract class AbstractSiteModel
extends AbstractModel
implements ISiteModel {
    private static final long serialVersionUID = 1L;
    protected transient Site site;
    private transient ISiteModelFactory factory;
    private boolean enabled = true;

    public ISite getSite() {
        if (this.site == null) {
            Site s = new Site();
            s.model = this;
            this.site = s;
        }
        return this.site;
    }

    public ISiteModelFactory getFactory() {
        if (this.factory == null) {
            this.factory = new SiteModelFactory(this);
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

    public boolean isValid() {
        if (!this.isLoaded() || this.site == null) {
            return false;
        }
        return this.site.isValid();
    }

    public void load(InputStream stream, boolean outOfSync) throws CoreException {
        try {
            SAXParser parser = this.getSaxParser();
            XMLDefaultHandler handler = new XMLDefaultHandler();
            parser.parse(stream, (DefaultHandler)handler);
            if (handler.isPrepared()) {
                this.processDocument(handler.getDocument());
                this.setLoaded(true);
                if (!outOfSync) {
                    this.updateTimeStamp();
                }
            }
        }
        catch (Exception e) {
            PDECore.logException(e);
        }
    }

    private void processDocument(Document doc) {
        Element rootNode = doc.getDocumentElement();
        if (this.site == null) {
            this.site = new Site();
            this.site.model = this;
        } else {
            this.site.reset();
        }
        this.site.parse(rootNode);
    }

    public void reload(InputStream stream, boolean outOfSync) throws CoreException {
        if (this.site != null) {
            this.site.reset();
        }
        this.load(stream, outOfSync);
        this.fireModelChanged(new ModelChangedEvent(this, 99, new Object[]{this.site}, null));
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }
}


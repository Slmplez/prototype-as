/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.feature;

import java.io.PrintWriter;
import java.util.Locale;
import java.util.Vector;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.feature.FeatureObject;
import org.eclipse.pde.internal.core.feature.FeatureURLElement;
import org.eclipse.pde.internal.core.ifeature.IFeatureURL;
import org.eclipse.pde.internal.core.ifeature.IFeatureURLElement;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class FeatureURL
extends FeatureObject
implements IFeatureURL {
    private static final long serialVersionUID = 1L;
    private IFeatureURLElement fUpdate;
    private Vector fDiscoveries = new Vector();

    public void addDiscovery(IFeatureURLElement discovery) throws CoreException {
        this.ensureModelEditable();
        this.fDiscoveries.add(discovery);
        ((FeatureURLElement)discovery).setInTheModel(true);
        this.fireStructureChanged(discovery, 1);
    }

    public void setUpdate(IFeatureURLElement update) throws CoreException {
        this.ensureModelEditable();
        if (this.fUpdate == update) {
            return;
        }
        if (this.fUpdate != null) {
            ((FeatureURLElement)this.fUpdate).setInTheModel(false);
        }
        IFeatureURLElement oldValue = this.fUpdate;
        this.fUpdate = update;
        if (oldValue != null) {
            this.fireStructureChanged(oldValue, 2);
        }
        if (update != null) {
            ((FeatureURLElement)update).setInTheModel(true);
            this.fireStructureChanged(update, 1);
        }
    }

    public IFeatureURLElement[] getDiscoveries() {
        return this.fDiscoveries.toArray(new IFeatureURLElement[this.fDiscoveries.size()]);
    }

    public IFeatureURLElement getUpdate() {
        return this.fUpdate;
    }

    protected void parse(Node node) {
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                String tag = child.getNodeName().toLowerCase(Locale.ENGLISH);
                int urlType = -1;
                if (tag.equals("update")) {
                    urlType = 1;
                } else if (tag.equals("discovery")) {
                    urlType = 2;
                }
                if (urlType != -1) {
                    IFeatureURLElement element = this.getModel().getFactory().createURLElement(this, urlType);
                    ((FeatureURLElement)element).parse(child);
                    if (urlType == 1) {
                        ((FeatureURLElement)element).setInTheModel(true);
                        this.fUpdate = element;
                    } else if (urlType == 2) {
                        ((FeatureURLElement)element).setInTheModel(true);
                        this.fDiscoveries.add(element);
                    }
                }
            }
            ++i;
        }
    }

    public void removeDiscovery(IFeatureURLElement discovery) throws CoreException {
        this.ensureModelEditable();
        this.fDiscoveries.remove(discovery);
        ((FeatureURLElement)discovery).setInTheModel(false);
        this.fireStructureChanged(discovery, 2);
    }

    public void write(String indent, PrintWriter writer) {
        if (this.fUpdate == null && this.fDiscoveries.size() <= 0) {
            return;
        }
        writer.println();
        writer.println(String.valueOf(indent) + "<url>");
        String indent2 = String.valueOf(indent) + "   ";
        if (this.fUpdate != null) {
            this.fUpdate.write(indent2, writer);
        }
        int i = 0;
        while (i < this.fDiscoveries.size()) {
            IFeatureURLElement element = (IFeatureURLElement)this.fDiscoveries.elementAt(i);
            element.write(indent2, writer);
            ++i;
        }
        writer.println(String.valueOf(indent) + "</url>");
    }
}


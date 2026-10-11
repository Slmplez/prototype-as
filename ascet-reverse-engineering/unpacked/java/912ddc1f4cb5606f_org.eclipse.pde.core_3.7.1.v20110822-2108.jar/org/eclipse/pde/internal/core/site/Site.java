/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.site;

import java.io.PrintWriter;
import java.util.Locale;
import java.util.Vector;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.internal.core.isite.ISite;
import org.eclipse.pde.internal.core.isite.ISiteArchive;
import org.eclipse.pde.internal.core.isite.ISiteCategoryDefinition;
import org.eclipse.pde.internal.core.isite.ISiteDescription;
import org.eclipse.pde.internal.core.isite.ISiteFeature;
import org.eclipse.pde.internal.core.site.SiteArchive;
import org.eclipse.pde.internal.core.site.SiteCategoryDefinition;
import org.eclipse.pde.internal.core.site.SiteDescription;
import org.eclipse.pde.internal.core.site.SiteFeature;
import org.eclipse.pde.internal.core.site.SiteObject;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Site
extends SiteObject
implements ISite {
    private static final long serialVersionUID = 1L;
    static final String INDENT = "   ";
    private Vector features = new Vector();
    private Vector archives = new Vector();
    private Vector categoryDefs = new Vector();
    private String type;
    private String url;
    private String mirrorsUrl;
    private String digestUrl;
    private String associateSitesUrl;
    private ISiteDescription description;

    public void setType(String type) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.type;
        this.type = type;
        this.firePropertyChanged("type", oldValue, type);
    }

    public String getType() {
        return this.type;
    }

    public void setURL(String url) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.url;
        this.url = url;
        this.firePropertyChanged("URL", oldValue, url);
    }

    public String getURL() {
        return this.url;
    }

    public void setDigestURL(String url) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.digestUrl;
        this.digestUrl = url;
        this.firePropertyChanged("digestURL", oldValue, url);
    }

    public String getDigestURL() {
        return this.digestUrl;
    }

    public void setAssociateSitesURL(String url) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.associateSitesUrl;
        this.associateSitesUrl = url;
        this.firePropertyChanged("associateSitesURL", oldValue, url);
    }

    public String getAssociateSitesURL() {
        return this.associateSitesUrl;
    }

    public void setMirrorsURL(String url) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.mirrorsUrl;
        this.mirrorsUrl = url;
        this.firePropertyChanged("mirrorsURL", oldValue, url);
    }

    public String getMirrorsURL() {
        return this.mirrorsUrl;
    }

    public ISiteDescription getDescription() {
        return this.description;
    }

    public void setDescription(ISiteDescription description) throws CoreException {
        this.ensureModelEditable();
        ISiteDescription oldValue = this.description;
        this.description = description;
        this.firePropertyChanged("description", oldValue, description);
    }

    public void addFeatures(ISiteFeature[] newFeatures) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < newFeatures.length) {
            ISiteFeature feature = newFeatures[i];
            ((SiteFeature)feature).setInTheModel(true);
            this.features.add(newFeatures[i]);
            ++i;
        }
        this.fireStructureChanged(newFeatures, 1);
    }

    public void addArchives(ISiteArchive[] archs) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < archs.length) {
            ISiteArchive archive = archs[i];
            ((SiteArchive)archive).setInTheModel(true);
            this.archives.add(archs[i]);
            ++i;
        }
        this.fireStructureChanged(archs, 1);
    }

    public void addCategoryDefinitions(ISiteCategoryDefinition[] defs) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < defs.length) {
            ISiteCategoryDefinition def = defs[i];
            ((SiteCategoryDefinition)def).setInTheModel(true);
            this.categoryDefs.add(defs[i]);
            ++i;
        }
        this.fireStructureChanged(defs, 1);
    }

    public void removeFeatures(ISiteFeature[] newFeatures) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < newFeatures.length) {
            ISiteFeature feature = newFeatures[i];
            ((SiteFeature)feature).setInTheModel(false);
            this.features.remove(newFeatures[i]);
            ++i;
        }
        this.fireStructureChanged(newFeatures, 2);
    }

    public void removeArchives(ISiteArchive[] archs) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < archs.length) {
            ISiteArchive archive = archs[i];
            ((SiteArchive)archive).setInTheModel(false);
            this.archives.remove(archs[i]);
            ++i;
        }
        this.fireStructureChanged(archs, 2);
    }

    public void removeCategoryDefinitions(ISiteCategoryDefinition[] defs) throws CoreException {
        this.ensureModelEditable();
        int i = 0;
        while (i < defs.length) {
            ISiteCategoryDefinition def = defs[i];
            ((SiteCategoryDefinition)def).setInTheModel(false);
            this.categoryDefs.remove(defs[i]);
            ++i;
        }
        this.fireStructureChanged(defs, 2);
    }

    public ISiteFeature[] getFeatures() {
        return this.features.toArray(new ISiteFeature[this.features.size()]);
    }

    public ISiteArchive[] getArchives() {
        return this.archives.toArray(new ISiteArchive[this.archives.size()]);
    }

    public ISiteCategoryDefinition[] getCategoryDefinitions() {
        return this.categoryDefs.toArray(new ISiteCategoryDefinition[this.categoryDefs.size()]);
    }

    protected void reset() {
        this.archives.clear();
        this.categoryDefs.clear();
        this.features.clear();
        this.description = null;
        this.type = null;
        this.url = null;
        this.mirrorsUrl = null;
        this.digestUrl = null;
        this.associateSitesUrl = null;
    }

    protected void parse(Node node) {
        this.type = this.getNodeAttribute(node, "type");
        this.url = this.getNodeAttribute(node, "URL");
        this.mirrorsUrl = this.getNodeAttribute(node, "mirrorsURL");
        this.digestUrl = this.getNodeAttribute(node, "digestURL");
        this.associateSitesUrl = this.getNodeAttribute(node, "associateSitesURL");
        NodeList children = node.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child.getNodeType() == 1) {
                this.parseChild(child);
            }
            ++i;
        }
    }

    protected void parseChild(Node child) {
        String tag = child.getNodeName().toLowerCase(Locale.ENGLISH);
        if (tag.equals("feature")) {
            ISiteFeature feature = this.getModel().getFactory().createFeature();
            ((SiteFeature)feature).parse(child);
            ((SiteFeature)feature).setInTheModel(true);
            this.features.add(feature);
        } else if (tag.equals("archive")) {
            ISiteArchive archive = this.getModel().getFactory().createArchive();
            ((SiteArchive)archive).parse(child);
            ((SiteArchive)archive).setInTheModel(true);
            this.archives.add(archive);
        } else if (tag.equals("category-def")) {
            ISiteCategoryDefinition def = this.getModel().getFactory().createCategoryDefinition();
            ((SiteCategoryDefinition)def).parse(child);
            ((SiteCategoryDefinition)def).setInTheModel(true);
            this.categoryDefs.add(def);
        } else if (tag.equals("description")) {
            if (this.description != null) {
                return;
            }
            this.description = this.getModel().getFactory().createDescription(this);
            ((SiteDescription)this.description).parse(child);
            ((SiteDescription)this.description).setInTheModel(true);
        }
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("type")) {
            this.setType(newValue != null ? newValue.toString() : null);
        } else if (name.equals("URL")) {
            this.setURL(newValue != null ? newValue.toString() : null);
        } else if (name.equals("mirrorsURL")) {
            this.setMirrorsURL(newValue != null ? newValue.toString() : null);
        } else if (name.equals("digestURL")) {
            this.setDigestURL(newValue != null ? newValue.toString() : null);
        } else if (name.equals("associateSitesURL")) {
            this.setAssociateSitesURL(newValue != null ? newValue.toString() : null);
        } else if (name.equals("description") && newValue instanceof ISiteDescription) {
            this.setDescription((ISiteDescription)newValue);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(String.valueOf(indent) + "<site");
        String indent2 = String.valueOf(indent) + INDENT;
        String indenta = String.valueOf(indent) + INDENT + INDENT;
        this.writeIfDefined(indenta, writer, "type", this.getType());
        this.writeIfDefined(indenta, writer, "URL", this.getURL());
        this.writeIfDefined(indenta, writer, "mirrorsURL", this.getMirrorsURL());
        this.writeIfDefined(indenta, writer, "digestURL", this.getDigestURL());
        this.writeIfDefined(indenta, writer, "associateSitesURL", this.getAssociateSitesURL());
        writer.println(">");
        if (this.description != null) {
            this.description.write(indent2, writer);
        }
        this.writeChildren(indent2, this.features, writer);
        this.writeChildren(indent2, this.archives, writer);
        this.writeChildren(indent2, this.categoryDefs, writer);
        writer.println(String.valueOf(indent) + "</site>");
    }

    public boolean isValid() {
        int i = 0;
        while (i < this.features.size()) {
            ISiteFeature feature = (ISiteFeature)this.features.get(i);
            if (!feature.isValid()) {
                return false;
            }
            ++i;
        }
        i = 0;
        while (i < this.archives.size()) {
            ISiteArchive archive = (ISiteArchive)this.archives.get(i);
            if (!archive.isValid()) {
                return false;
            }
            ++i;
        }
        i = 0;
        while (i < this.categoryDefs.size()) {
            ISiteCategoryDefinition def = (ISiteCategoryDefinition)this.categoryDefs.get(i);
            if (!def.isValid()) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private void writeChildren(String indent, Vector children, PrintWriter writer) {
        int i = 0;
        while (i < children.size()) {
            IWritable writable = (IWritable)children.get(i);
            writable.write(indent, writer);
            ++i;
        }
    }

    private void writeIfDefined(String indent, PrintWriter writer, String attName, String attValue) {
        if (attValue == null || attValue.length() <= 0) {
            return;
        }
        writer.println();
        writer.print(String.valueOf(indent) + attName + "=\"" + SiteObject.getWritableString(attValue) + "\"");
    }
}


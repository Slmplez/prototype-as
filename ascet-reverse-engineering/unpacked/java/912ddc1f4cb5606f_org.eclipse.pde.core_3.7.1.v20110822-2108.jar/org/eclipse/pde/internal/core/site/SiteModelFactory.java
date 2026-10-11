/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.site;

import org.eclipse.pde.internal.core.isite.ISite;
import org.eclipse.pde.internal.core.isite.ISiteArchive;
import org.eclipse.pde.internal.core.isite.ISiteCategory;
import org.eclipse.pde.internal.core.isite.ISiteCategoryDefinition;
import org.eclipse.pde.internal.core.isite.ISiteDescription;
import org.eclipse.pde.internal.core.isite.ISiteFeature;
import org.eclipse.pde.internal.core.isite.ISiteModel;
import org.eclipse.pde.internal.core.isite.ISiteModelFactory;
import org.eclipse.pde.internal.core.isite.ISiteObject;
import org.eclipse.pde.internal.core.site.Site;
import org.eclipse.pde.internal.core.site.SiteArchive;
import org.eclipse.pde.internal.core.site.SiteCategory;
import org.eclipse.pde.internal.core.site.SiteCategoryDefinition;
import org.eclipse.pde.internal.core.site.SiteDescription;
import org.eclipse.pde.internal.core.site.SiteFeature;

public class SiteModelFactory
implements ISiteModelFactory {
    private ISiteModel model;

    public SiteModelFactory(ISiteModel model) {
        this.model = model;
    }

    public ISite createSite() {
        Site site = new Site();
        site.model = this.model;
        site.parent = null;
        return site;
    }

    public ISiteFeature createFeature() {
        SiteFeature feature = new SiteFeature();
        feature.model = this.model;
        feature.parent = this.model.getSite();
        return feature;
    }

    public ISiteCategory createCategory(ISiteFeature feature) {
        SiteCategory category = new SiteCategory();
        category.model = this.model;
        category.parent = feature;
        return category;
    }

    public ISiteCategoryDefinition createCategoryDefinition() {
        SiteCategoryDefinition def = new SiteCategoryDefinition();
        def.model = this.model;
        def.parent = this.model.getSite();
        return def;
    }

    public ISiteDescription createDescription(ISiteObject parent) {
        SiteDescription desc = new SiteDescription();
        desc.model = this.model;
        desc.parent = parent;
        return desc;
    }

    public ISiteArchive createArchive() {
        SiteArchive archive = new SiteArchive();
        archive.model = this.model;
        archive.parent = this.model.getSite();
        return archive;
    }
}


/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.isite;

import org.eclipse.pde.internal.core.isite.ISite;
import org.eclipse.pde.internal.core.isite.ISiteArchive;
import org.eclipse.pde.internal.core.isite.ISiteCategory;
import org.eclipse.pde.internal.core.isite.ISiteCategoryDefinition;
import org.eclipse.pde.internal.core.isite.ISiteDescription;
import org.eclipse.pde.internal.core.isite.ISiteFeature;
import org.eclipse.pde.internal.core.isite.ISiteObject;

public interface ISiteModelFactory {
    public ISite createSite();

    public ISiteFeature createFeature();

    public ISiteCategory createCategory(ISiteFeature var1);

    public ISiteCategoryDefinition createCategoryDefinition();

    public ISiteDescription createDescription(ISiteObject var1);

    public ISiteArchive createArchive();
}


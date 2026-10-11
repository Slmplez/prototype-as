/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.isite;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.isite.ISiteArchive;
import org.eclipse.pde.internal.core.isite.ISiteCategoryDefinition;
import org.eclipse.pde.internal.core.isite.ISiteDescription;
import org.eclipse.pde.internal.core.isite.ISiteFeature;
import org.eclipse.pde.internal.core.isite.ISiteObject;

public interface ISite
extends ISiteObject {
    public static final String P_URL = "URL";
    public static final String P_MIRRORS_URL = "mirrorsURL";
    public static final String P_TYPE = "type";
    public static final String P_DESCRIPTION = "description";
    public static final String P_DIGEST_URL = "digestURL";
    public static final String P_ASSOCIATE_SITES_URL = "associateSitesURL";

    public void setType(String var1) throws CoreException;

    public String getType();

    public void setURL(String var1) throws CoreException;

    public void setMirrorsURL(String var1) throws CoreException;

    public void setDigestURL(String var1) throws CoreException;

    public void setAssociateSitesURL(String var1) throws CoreException;

    public String getURL();

    public String getMirrorsURL();

    public String getDigestURL();

    public String getAssociateSitesURL();

    public ISiteDescription getDescription();

    public void setDescription(ISiteDescription var1) throws CoreException;

    public void addFeatures(ISiteFeature[] var1) throws CoreException;

    public void addArchives(ISiteArchive[] var1) throws CoreException;

    public void addCategoryDefinitions(ISiteCategoryDefinition[] var1) throws CoreException;

    public void removeFeatures(ISiteFeature[] var1) throws CoreException;

    public void removeArchives(ISiteArchive[] var1) throws CoreException;

    public void removeCategoryDefinitions(ISiteCategoryDefinition[] var1) throws CoreException;

    public ISiteFeature[] getFeatures();

    public ISiteArchive[] getArchives();

    public ISiteCategoryDefinition[] getCategoryDefinitions();

    public boolean isValid();
}


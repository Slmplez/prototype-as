/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GAUTOSAR
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar21.genericstructure.infrastructure.autosar;

import autosar21.genericstructure.commonpatterns.admindata.AdminData;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.autosar.ARPackage;
import gautosar.ggenericstructure.ginfrastructure.GAUTOSAR;
import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface AUTOSAR
extends ARObject,
GAUTOSAR {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public AdminData getAdminData();

    public void setAdminData(AdminData var1);

    public EList<ARPackage> getTopLevelPackages();

    public EMap<String, String> getXSISchemaLocation();

    public Map<String, Object> getExtensions();
}


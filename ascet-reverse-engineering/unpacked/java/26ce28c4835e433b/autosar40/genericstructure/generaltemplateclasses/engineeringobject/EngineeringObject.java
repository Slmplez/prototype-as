/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GEngineeringObject
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.engineeringobject;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.gcommonstructure.gimplementation.GEngineeringObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EngineeringObject
extends ARObject,
GEngineeringObject {
    public String getShortLabel();

    public void setShortLabel(String var1);

    public void unsetShortLabel();

    public boolean isSetShortLabel();

    public String getCategory();

    public void setCategory(String var1);

    public void unsetCategory();

    public boolean isSetCategory();

    public EList<String> getRevisionLabels();

    public void unsetRevisionLabels();

    public boolean isSetRevisionLabels();

    public String getDomain();

    public void setDomain(String var1);

    public void unsetDomain();

    public boolean isSetDomain();
}


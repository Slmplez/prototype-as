/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecuresource;

import autosar40.ecuresource.HwPin;
import autosar40.ecuresource.HwPinGroup;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface HwPinGroupContent
extends ARObject {
    public HwPinGroup getHwPinGroup();

    public void setHwPinGroup(HwPinGroup var1);

    public EList<HwPin> getHwPins();

    public EList<HwPinGroup> getHwPinGroups();
}


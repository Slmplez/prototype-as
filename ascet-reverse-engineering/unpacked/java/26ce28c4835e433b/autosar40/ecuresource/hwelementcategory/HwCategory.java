/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecuresource.hwelementcategory;

import autosar40.ecuresource.hwelementcategory.HwAttributeDef;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface HwCategory
extends ARElement {
    public EList<HwAttributeDef> getHwAttributeDefs();
}


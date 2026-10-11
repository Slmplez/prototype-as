/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.ecuresource.hwelementcategory;

import autosar40.ecuresource.hwelementcategory.HwAttributeDef;
import autosar40.ecuresource.hwelementcategory.HwAttributeLiteralDef;
import autosar40.ecuresource.hwelementcategory.HwAttributeValue;
import autosar40.ecuresource.hwelementcategory.HwCategory;
import autosar40.ecuresource.hwelementcategory.HwType;
import autosar40.ecuresource.hwelementcategory.HwelementcategoryPackage;
import autosar40.ecuresource.hwelementcategory.impl.HwelementcategoryFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface HwelementcategoryFactory
extends EFactory {
    public static final HwelementcategoryFactory eINSTANCE = HwelementcategoryFactoryImpl.init();

    public HwAttributeDef createHwAttributeDef();

    public HwAttributeLiteralDef createHwAttributeLiteralDef();

    public HwAttributeValue createHwAttributeValue();

    public HwCategory createHwCategory();

    public HwType createHwType();

    public HwelementcategoryPackage getHwelementcategoryPackage();
}


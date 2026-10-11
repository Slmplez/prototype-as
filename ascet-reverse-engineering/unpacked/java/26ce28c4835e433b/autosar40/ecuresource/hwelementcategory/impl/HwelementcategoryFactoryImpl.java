/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.ecuresource.hwelementcategory.impl;

import autosar40.ecuresource.hwelementcategory.HwAttributeDef;
import autosar40.ecuresource.hwelementcategory.HwAttributeLiteralDef;
import autosar40.ecuresource.hwelementcategory.HwAttributeValue;
import autosar40.ecuresource.hwelementcategory.HwCategory;
import autosar40.ecuresource.hwelementcategory.HwType;
import autosar40.ecuresource.hwelementcategory.HwelementcategoryFactory;
import autosar40.ecuresource.hwelementcategory.HwelementcategoryPackage;
import autosar40.ecuresource.hwelementcategory.impl.HwAttributeDefImpl;
import autosar40.ecuresource.hwelementcategory.impl.HwAttributeLiteralDefImpl;
import autosar40.ecuresource.hwelementcategory.impl.HwAttributeValueImpl;
import autosar40.ecuresource.hwelementcategory.impl.HwCategoryImpl;
import autosar40.ecuresource.hwelementcategory.impl.HwTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class HwelementcategoryFactoryImpl
extends EFactoryImpl
implements HwelementcategoryFactory {
    public static HwelementcategoryFactory init() {
        try {
            HwelementcategoryFactory theHwelementcategoryFactory = (HwelementcategoryFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/er/hec");
            if (theHwelementcategoryFactory != null) {
                return theHwelementcategoryFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new HwelementcategoryFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createHwAttributeDef();
            }
            case 1: {
                return this.createHwAttributeLiteralDef();
            }
            case 2: {
                return this.createHwAttributeValue();
            }
            case 3: {
                return this.createHwCategory();
            }
            case 4: {
                return this.createHwType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public HwAttributeDef createHwAttributeDef() {
        HwAttributeDefImpl hwAttributeDef = new HwAttributeDefImpl();
        return hwAttributeDef;
    }

    public HwAttributeLiteralDef createHwAttributeLiteralDef() {
        HwAttributeLiteralDefImpl hwAttributeLiteralDef = new HwAttributeLiteralDefImpl();
        return hwAttributeLiteralDef;
    }

    public HwAttributeValue createHwAttributeValue() {
        HwAttributeValueImpl hwAttributeValue = new HwAttributeValueImpl();
        return hwAttributeValue;
    }

    public HwCategory createHwCategory() {
        HwCategoryImpl hwCategory = new HwCategoryImpl();
        return hwCategory;
    }

    public HwType createHwType() {
        HwTypeImpl hwType = new HwTypeImpl();
        return hwType;
    }

    public HwelementcategoryPackage getHwelementcategoryPackage() {
        return (HwelementcategoryPackage)this.getEPackage();
    }

    @Deprecated
    public static HwelementcategoryPackage getPackage() {
        return HwelementcategoryPackage.eINSTANCE;
    }
}


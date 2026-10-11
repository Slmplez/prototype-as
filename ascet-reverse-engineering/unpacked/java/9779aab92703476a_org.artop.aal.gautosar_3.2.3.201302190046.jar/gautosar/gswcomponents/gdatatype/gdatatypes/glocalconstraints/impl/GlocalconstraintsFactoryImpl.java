/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.impl;

import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GIntervalTypeEnum;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GlocalconstraintsFactory;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GlocalconstraintsPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GlocalconstraintsFactoryImpl
extends EFactoryImpl
implements GlocalconstraintsFactory {
    public static GlocalconstraintsFactory init() {
        try {
            GlocalconstraintsFactory theGlocalconstraintsFactory = (GlocalconstraintsFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/d/d/lc");
            if (theGlocalconstraintsFactory != null) {
                return theGlocalconstraintsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GlocalconstraintsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 2: {
                return this.createGIntervalTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 2: {
                return this.convertGIntervalTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public GIntervalTypeEnum createGIntervalTypeEnumFromString(EDataType eDataType, String initialValue) {
        GIntervalTypeEnum result = GIntervalTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertGIntervalTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public GlocalconstraintsPackage getGlocalconstraintsPackage() {
        return (GlocalconstraintsPackage)this.getEPackage();
    }

    @Deprecated
    public static GlocalconstraintsPackage getPackage() {
        return GlocalconstraintsPackage.eINSTANCE;
    }
}


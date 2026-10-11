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
package gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.impl;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GByteOrderEnum;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GprimitivetypesFactory;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GprimitivetypesPackage;
import javax.xml.datatype.DatatypeFactory;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GprimitivetypesFactoryImpl
extends EFactoryImpl
implements GprimitivetypesFactory {
    private DatatypeFactory datatypeFactory = null;

    public static GprimitivetypesFactory init() {
        try {
            GprimitivetypesFactory theGprimitivetypesFactory = (GprimitivetypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/gs/gtc/pt");
            if (theGprimitivetypesFactory != null) {
                return theGprimitivetypesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GprimitivetypesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 0: {
                return this.createGByteOrderEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 0: {
                return this.convertGByteOrderEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public GByteOrderEnum createGByteOrderEnumFromString(EDataType eDataType, String initialValue) {
        GByteOrderEnum result = GByteOrderEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertGByteOrderEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public GprimitivetypesPackage getGprimitivetypesPackage() {
        return (GprimitivetypesPackage)this.getEPackage();
    }

    @Deprecated
    public static GprimitivetypesPackage getPackage() {
        return GprimitivetypesPackage.eINSTANCE;
    }
}


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
package autosar40.swcomponent.datatype.recordlayout.impl;

import autosar40.swcomponent.datatype.recordlayout.RecordlayoutFactory;
import autosar40.swcomponent.datatype.recordlayout.RecordlayoutPackage;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayout;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroup;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroupContent;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutV;
import autosar40.swcomponent.datatype.recordlayout.impl.SwRecordLayoutGroupContentImpl;
import autosar40.swcomponent.datatype.recordlayout.impl.SwRecordLayoutGroupImpl;
import autosar40.swcomponent.datatype.recordlayout.impl.SwRecordLayoutImpl;
import autosar40.swcomponent.datatype.recordlayout.impl.SwRecordLayoutVImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class RecordlayoutFactoryImpl
extends EFactoryImpl
implements RecordlayoutFactory {
    public static RecordlayoutFactory init() {
        try {
            RecordlayoutFactory theRecordlayoutFactory = (RecordlayoutFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/d/rl");
            if (theRecordlayoutFactory != null) {
                return theRecordlayoutFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new RecordlayoutFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSwRecordLayout();
            }
            case 1: {
                return this.createSwRecordLayoutGroup();
            }
            case 2: {
                return this.createSwRecordLayoutGroupContent();
            }
            case 3: {
                return this.createSwRecordLayoutV();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.createAsamRecordLayoutSemanticsFromString(eDataType, initialValue);
            }
            case 5: {
                return this.createAxisIndexTypeFromString(eDataType, initialValue);
            }
            case 6: {
                return this.createRecordLayoutIteratorPointFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.convertAsamRecordLayoutSemanticsToString(eDataType, instanceValue);
            }
            case 5: {
                return this.convertAxisIndexTypeToString(eDataType, instanceValue);
            }
            case 6: {
                return this.convertRecordLayoutIteratorPointToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public SwRecordLayout createSwRecordLayout() {
        SwRecordLayoutImpl swRecordLayout = new SwRecordLayoutImpl();
        return swRecordLayout;
    }

    public SwRecordLayoutGroup createSwRecordLayoutGroup() {
        SwRecordLayoutGroupImpl swRecordLayoutGroup = new SwRecordLayoutGroupImpl();
        return swRecordLayoutGroup;
    }

    public SwRecordLayoutGroupContent createSwRecordLayoutGroupContent() {
        SwRecordLayoutGroupContentImpl swRecordLayoutGroupContent = new SwRecordLayoutGroupContentImpl();
        return swRecordLayoutGroupContent;
    }

    public SwRecordLayoutV createSwRecordLayoutV() {
        SwRecordLayoutVImpl swRecordLayoutV = new SwRecordLayoutVImpl();
        return swRecordLayoutV;
    }

    public String createAsamRecordLayoutSemanticsFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertAsamRecordLayoutSemanticsToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createAxisIndexTypeFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertAxisIndexTypeToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createRecordLayoutIteratorPointFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertRecordLayoutIteratorPointToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public RecordlayoutPackage getRecordlayoutPackage() {
        return (RecordlayoutPackage)this.getEPackage();
    }

    @Deprecated
    public static RecordlayoutPackage getPackage() {
        return RecordlayoutPackage.eINSTANCE;
    }
}


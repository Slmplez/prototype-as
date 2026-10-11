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
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LPlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguagedatamodelFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguagedatamodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.XmlSpaceEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.LLongNameImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.LOverviewParagraphImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.LParagraphImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.LPlainTextImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.LVerbatimImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class LanguagedatamodelFactoryImpl
extends EFactoryImpl
implements LanguagedatamodelFactory {
    public static LanguagedatamodelFactory init() {
        try {
            LanguagedatamodelFactory theLanguagedatamodelFactory = (LanguagedatamodelFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/ldm");
            if (theLanguagedatamodelFactory != null) {
                return theLanguagedatamodelFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new LanguagedatamodelFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createLLongName();
            }
            case 2: {
                return this.createLOverviewParagraph();
            }
            case 3: {
                return this.createLParagraph();
            }
            case 4: {
                return this.createLPlainText();
            }
            case 5: {
                return this.createLVerbatim();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.createLEnumFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createXmlSpaceEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.convertLEnumToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertXmlSpaceEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public LLongName createLLongName() {
        LLongNameImpl lLongName = new LLongNameImpl();
        return lLongName;
    }

    public LOverviewParagraph createLOverviewParagraph() {
        LOverviewParagraphImpl lOverviewParagraph = new LOverviewParagraphImpl();
        return lOverviewParagraph;
    }

    public LParagraph createLParagraph() {
        LParagraphImpl lParagraph = new LParagraphImpl();
        return lParagraph;
    }

    public LPlainText createLPlainText() {
        LPlainTextImpl lPlainText = new LPlainTextImpl();
        return lPlainText;
    }

    public LVerbatim createLVerbatim() {
        LVerbatimImpl lVerbatim = new LVerbatimImpl();
        return lVerbatim;
    }

    public LEnum createLEnumFromString(EDataType eDataType, String initialValue) {
        LEnum result = LEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertLEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public XmlSpaceEnum createXmlSpaceEnumFromString(EDataType eDataType, String initialValue) {
        XmlSpaceEnum result = XmlSpaceEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertXmlSpaceEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public LanguagedatamodelPackage getLanguagedatamodelPackage() {
        return (LanguagedatamodelPackage)this.getEPackage();
    }

    @Deprecated
    public static LanguagedatamodelPackage getPackage() {
        return LanguagedatamodelPackage.eINSTANCE;
    }
}


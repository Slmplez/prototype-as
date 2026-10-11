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
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.EEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.EEnumFont;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.InlineattributeenumsFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.InlineattributeenumsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowContentEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceAliasNameEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceCategoryEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceLongNameEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceNumberEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourcePageEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceShortNameEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceTypeEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowSeeEnum;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InlineattributeenumsFactoryImpl
extends EFactoryImpl
implements InlineattributeenumsFactory {
    public static InlineattributeenumsFactory init() {
        try {
            InlineattributeenumsFactory theInlineattributeenumsFactory = (InlineattributeenumsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/iae");
            if (theInlineattributeenumsFactory != null) {
                return theInlineattributeenumsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InlineattributeenumsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 0: {
                return this.createEEnumFromString(eDataType, initialValue);
            }
            case 1: {
                return this.createEEnumFontFromString(eDataType, initialValue);
            }
            case 2: {
                return this.createShowContentEnumFromString(eDataType, initialValue);
            }
            case 3: {
                return this.createShowResourceAliasNameEnumFromString(eDataType, initialValue);
            }
            case 4: {
                return this.createShowResourceCategoryEnumFromString(eDataType, initialValue);
            }
            case 5: {
                return this.createShowResourceLongNameEnumFromString(eDataType, initialValue);
            }
            case 6: {
                return this.createShowResourceNumberEnumFromString(eDataType, initialValue);
            }
            case 7: {
                return this.createShowResourcePageEnumFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createShowResourceShortNameEnumFromString(eDataType, initialValue);
            }
            case 9: {
                return this.createShowResourceTypeEnumFromString(eDataType, initialValue);
            }
            case 10: {
                return this.createShowSeeEnumFromString(eDataType, initialValue);
            }
            case 11: {
                return this.createExtIdClassEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 0: {
                return this.convertEEnumToString(eDataType, instanceValue);
            }
            case 1: {
                return this.convertEEnumFontToString(eDataType, instanceValue);
            }
            case 2: {
                return this.convertShowContentEnumToString(eDataType, instanceValue);
            }
            case 3: {
                return this.convertShowResourceAliasNameEnumToString(eDataType, instanceValue);
            }
            case 4: {
                return this.convertShowResourceCategoryEnumToString(eDataType, instanceValue);
            }
            case 5: {
                return this.convertShowResourceLongNameEnumToString(eDataType, instanceValue);
            }
            case 6: {
                return this.convertShowResourceNumberEnumToString(eDataType, instanceValue);
            }
            case 7: {
                return this.convertShowResourcePageEnumToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertShowResourceShortNameEnumToString(eDataType, instanceValue);
            }
            case 9: {
                return this.convertShowResourceTypeEnumToString(eDataType, instanceValue);
            }
            case 10: {
                return this.convertShowSeeEnumToString(eDataType, instanceValue);
            }
            case 11: {
                return this.convertExtIdClassEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public EEnum createEEnumFromString(EDataType eDataType, String initialValue) {
        EEnum result = EEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertEEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public EEnumFont createEEnumFontFromString(EDataType eDataType, String initialValue) {
        EEnumFont result = EEnumFont.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertEEnumFontToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ShowContentEnum createShowContentEnumFromString(EDataType eDataType, String initialValue) {
        ShowContentEnum result = ShowContentEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertShowContentEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ShowResourceAliasNameEnum createShowResourceAliasNameEnumFromString(EDataType eDataType, String initialValue) {
        ShowResourceAliasNameEnum result = ShowResourceAliasNameEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertShowResourceAliasNameEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ShowResourceCategoryEnum createShowResourceCategoryEnumFromString(EDataType eDataType, String initialValue) {
        ShowResourceCategoryEnum result = ShowResourceCategoryEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertShowResourceCategoryEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ShowResourceLongNameEnum createShowResourceLongNameEnumFromString(EDataType eDataType, String initialValue) {
        ShowResourceLongNameEnum result = ShowResourceLongNameEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertShowResourceLongNameEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ShowResourceNumberEnum createShowResourceNumberEnumFromString(EDataType eDataType, String initialValue) {
        ShowResourceNumberEnum result = ShowResourceNumberEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertShowResourceNumberEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ShowResourcePageEnum createShowResourcePageEnumFromString(EDataType eDataType, String initialValue) {
        ShowResourcePageEnum result = ShowResourcePageEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertShowResourcePageEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ShowResourceShortNameEnum createShowResourceShortNameEnumFromString(EDataType eDataType, String initialValue) {
        ShowResourceShortNameEnum result = ShowResourceShortNameEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertShowResourceShortNameEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ShowResourceTypeEnum createShowResourceTypeEnumFromString(EDataType eDataType, String initialValue) {
        ShowResourceTypeEnum result = ShowResourceTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertShowResourceTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ShowSeeEnum createShowSeeEnumFromString(EDataType eDataType, String initialValue) {
        ShowSeeEnum result = ShowSeeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertShowSeeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public String createExtIdClassEnumFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertExtIdClassEnumToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public InlineattributeenumsPackage getInlineattributeenumsPackage() {
        return (InlineattributeenumsPackage)this.getEPackage();
    }

    @Deprecated
    public static InlineattributeenumsPackage getPackage() {
        return InlineattributeenumsPackage.eINSTANCE;
    }
}


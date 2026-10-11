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
package autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.impl;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Br;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.EEnum;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.EEnumFont;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.EType;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Ft;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Ie;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesFactory;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesPackage;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.ShowContentEnum;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.ShowResourceLongNameEnum;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.ShowResourceNumberEnum;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.ShowResourcePageEnum;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.ShowResourceShortNameEnum;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.ShowResourceTypeEnum;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.ShowSeeEnum;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Std;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Tt;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.TtEnum;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Url;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Xdoc;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Xfile;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Xref;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.XrefTarget;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.BrImpl;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.ETypeImpl;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.FtImpl;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.IeImpl;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.StdImpl;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.TtImpl;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.UrlImpl;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.XdocImpl;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.XfileImpl;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.XrefImpl;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.XrefTargetImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InlinesFactoryImpl
extends EFactoryImpl
implements InlinesFactory {
    public static InlinesFactory init() {
        try {
            InlinesFactory theInlinesFactory = (InlinesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/gs/cp/itm/i");
            if (theInlinesFactory != null) {
                return theInlinesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InlinesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createBr();
            }
            case 1: {
                return this.createEType();
            }
            case 2: {
                return this.createFt();
            }
            case 3: {
                return this.createIe();
            }
            case 4: {
                return this.createStd();
            }
            case 5: {
                return this.createTt();
            }
            case 6: {
                return this.createUrl();
            }
            case 7: {
                return this.createXdoc();
            }
            case 8: {
                return this.createXfile();
            }
            case 9: {
                return this.createXref();
            }
            case 10: {
                return this.createXrefTarget();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 11: {
                return this.createEEnumFromString(eDataType, initialValue);
            }
            case 12: {
                return this.createEEnumFontFromString(eDataType, initialValue);
            }
            case 13: {
                return this.createShowContentEnumFromString(eDataType, initialValue);
            }
            case 14: {
                return this.createShowResourceLongNameEnumFromString(eDataType, initialValue);
            }
            case 15: {
                return this.createShowResourceNumberEnumFromString(eDataType, initialValue);
            }
            case 16: {
                return this.createShowResourcePageEnumFromString(eDataType, initialValue);
            }
            case 17: {
                return this.createShowResourceShortNameEnumFromString(eDataType, initialValue);
            }
            case 18: {
                return this.createShowResourceTypeEnumFromString(eDataType, initialValue);
            }
            case 19: {
                return this.createShowSeeEnumFromString(eDataType, initialValue);
            }
            case 20: {
                return this.createTtEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 11: {
                return this.convertEEnumToString(eDataType, instanceValue);
            }
            case 12: {
                return this.convertEEnumFontToString(eDataType, instanceValue);
            }
            case 13: {
                return this.convertShowContentEnumToString(eDataType, instanceValue);
            }
            case 14: {
                return this.convertShowResourceLongNameEnumToString(eDataType, instanceValue);
            }
            case 15: {
                return this.convertShowResourceNumberEnumToString(eDataType, instanceValue);
            }
            case 16: {
                return this.convertShowResourcePageEnumToString(eDataType, instanceValue);
            }
            case 17: {
                return this.convertShowResourceShortNameEnumToString(eDataType, instanceValue);
            }
            case 18: {
                return this.convertShowResourceTypeEnumToString(eDataType, instanceValue);
            }
            case 19: {
                return this.convertShowSeeEnumToString(eDataType, instanceValue);
            }
            case 20: {
                return this.convertTtEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public Br createBr() {
        BrImpl br = new BrImpl();
        return br;
    }

    public EType createEType() {
        ETypeImpl eType = new ETypeImpl();
        return eType;
    }

    public Ft createFt() {
        FtImpl ft = new FtImpl();
        return ft;
    }

    public Ie createIe() {
        IeImpl ie = new IeImpl();
        return ie;
    }

    public Std createStd() {
        StdImpl std = new StdImpl();
        return std;
    }

    public Tt createTt() {
        TtImpl tt = new TtImpl();
        return tt;
    }

    public Url createUrl() {
        UrlImpl url = new UrlImpl();
        return url;
    }

    public Xdoc createXdoc() {
        XdocImpl xdoc = new XdocImpl();
        return xdoc;
    }

    public Xfile createXfile() {
        XfileImpl xfile = new XfileImpl();
        return xfile;
    }

    public Xref createXref() {
        XrefImpl xref = new XrefImpl();
        return xref;
    }

    public XrefTarget createXrefTarget() {
        XrefTargetImpl xrefTarget = new XrefTargetImpl();
        return xrefTarget;
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

    public TtEnum createTtEnumFromString(EDataType eDataType, String initialValue) {
        TtEnum result = TtEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTtEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public InlinesPackage getInlinesPackage() {
        return (InlinesPackage)this.getEPackage();
    }

    @Deprecated
    public static InlinesPackage getPackage() {
        return InlinesPackage.eINSTANCE;
    }
}


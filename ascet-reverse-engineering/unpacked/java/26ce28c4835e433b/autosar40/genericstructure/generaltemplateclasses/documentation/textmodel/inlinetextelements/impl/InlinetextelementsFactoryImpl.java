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
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Br;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.EmphasisText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.FootnoteText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.IndexEntry;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Std;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Tt;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xdoc;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xfile;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xref;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.XrefTarget;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl.BrImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl.EmphasisTextImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl.FootnoteTextImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl.IndexEntryImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl.StdImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl.TtImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl.XdocImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl.XfileImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl.XrefImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl.XrefTargetImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InlinetextelementsFactoryImpl
extends EFactoryImpl
implements InlinetextelementsFactory {
    public static InlinetextelementsFactory init() {
        try {
            InlinetextelementsFactory theInlinetextelementsFactory = (InlinetextelementsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/ite");
            if (theInlinetextelementsFactory != null) {
                return theInlinetextelementsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InlinetextelementsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createBr();
            }
            case 1: {
                return this.createEmphasisText();
            }
            case 2: {
                return this.createFootnoteText();
            }
            case 3: {
                return this.createTt();
            }
            case 4: {
                return this.createIndexEntry();
            }
            case 5: {
                return this.createStd();
            }
            case 6: {
                return this.createXfile();
            }
            case 7: {
                return this.createXdoc();
            }
            case 8: {
                return this.createXref();
            }
            case 9: {
                return this.createXrefTarget();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 10: {
                return this.createSuperscriptFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 10: {
                return this.convertSuperscriptToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public Br createBr() {
        BrImpl br = new BrImpl();
        return br;
    }

    public EmphasisText createEmphasisText() {
        EmphasisTextImpl emphasisText = new EmphasisTextImpl();
        return emphasisText;
    }

    public FootnoteText createFootnoteText() {
        FootnoteTextImpl footnoteText = new FootnoteTextImpl();
        return footnoteText;
    }

    public Tt createTt() {
        TtImpl tt = new TtImpl();
        return tt;
    }

    public IndexEntry createIndexEntry() {
        IndexEntryImpl indexEntry = new IndexEntryImpl();
        return indexEntry;
    }

    public Std createStd() {
        StdImpl std = new StdImpl();
        return std;
    }

    public Xfile createXfile() {
        XfileImpl xfile = new XfileImpl();
        return xfile;
    }

    public Xdoc createXdoc() {
        XdocImpl xdoc = new XdocImpl();
        return xdoc;
    }

    public Xref createXref() {
        XrefImpl xref = new XrefImpl();
        return xref;
    }

    public XrefTarget createXrefTarget() {
        XrefTargetImpl xrefTarget = new XrefTargetImpl();
        return xrefTarget;
    }

    public String createSuperscriptFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertSuperscriptToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public InlinetextelementsPackage getInlinetextelementsPackage() {
        return (InlinetextelementsPackage)this.getEPackage();
    }

    @Deprecated
    public static InlinetextelementsPackage getPackage() {
        return InlinetextelementsPackage.eINSTANCE;
    }
}


/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Br;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.EmphasisText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.FootnoteText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.IndexEntry;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Std;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Tt;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xdoc;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xfile;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xref;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.XrefTarget;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl.InlinetextelementsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InlinetextelementsFactory
extends EFactory {
    public static final InlinetextelementsFactory eINSTANCE = InlinetextelementsFactoryImpl.init();

    public Br createBr();

    public EmphasisText createEmphasisText();

    public FootnoteText createFootnoteText();

    public Tt createTt();

    public IndexEntry createIndexEntry();

    public Std createStd();

    public Xfile createXfile();

    public Xdoc createXdoc();

    public Xref createXref();

    public XrefTarget createXrefTarget();

    public InlinetextelementsPackage getInlinetextelementsPackage();
}


/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.DefItem;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.DefList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.IndentSample;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.Item;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledItem;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.List;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl.ListelementsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ListelementsFactory
extends EFactory {
    public static final ListelementsFactory eINSTANCE = ListelementsFactoryImpl.init();

    public DefItem createDefItem();

    public DefList createDefList();

    public IndentSample createIndentSample();

    public Item createItem();

    public LabeledItem createLabeledItem();

    public LabeledList createLabeledList();

    public List createList();

    public ListelementsPackage getListelementsPackage();
}


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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.DefItem;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.DefList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.IndentSample;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.Item;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ItemLabelPosEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledItem;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.List;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl.DefItemImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl.DefListImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl.IndentSampleImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl.ItemImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl.LabeledItemImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl.LabeledListImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl.ListImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ListelementsFactoryImpl
extends EFactoryImpl
implements ListelementsFactory {
    public static ListelementsFactory init() {
        try {
            ListelementsFactory theListelementsFactory = (ListelementsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/le");
            if (theListelementsFactory != null) {
                return theListelementsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ListelementsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createDefItem();
            }
            case 1: {
                return this.createDefList();
            }
            case 2: {
                return this.createIndentSample();
            }
            case 3: {
                return this.createItem();
            }
            case 4: {
                return this.createLabeledItem();
            }
            case 5: {
                return this.createLabeledList();
            }
            case 6: {
                return this.createList();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.createItemLabelPosEnumFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createListEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.convertItemLabelPosEnumToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertListEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public DefItem createDefItem() {
        DefItemImpl defItem = new DefItemImpl();
        return defItem;
    }

    public DefList createDefList() {
        DefListImpl defList = new DefListImpl();
        return defList;
    }

    public IndentSample createIndentSample() {
        IndentSampleImpl indentSample = new IndentSampleImpl();
        return indentSample;
    }

    public Item createItem() {
        ItemImpl item = new ItemImpl();
        return item;
    }

    public LabeledItem createLabeledItem() {
        LabeledItemImpl labeledItem = new LabeledItemImpl();
        return labeledItem;
    }

    public LabeledList createLabeledList() {
        LabeledListImpl labeledList = new LabeledListImpl();
        return labeledList;
    }

    public List createList() {
        ListImpl list = new ListImpl();
        return list;
    }

    public ItemLabelPosEnum createItemLabelPosEnumFromString(EDataType eDataType, String initialValue) {
        ItemLabelPosEnum result = ItemLabelPosEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertItemLabelPosEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ListEnum createListEnumFromString(EDataType eDataType, String initialValue) {
        ListEnum result = ListEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertListEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ListelementsPackage getListelementsPackage() {
        return (ListelementsPackage)this.getEPackage();
    }

    @Deprecated
    public static ListelementsPackage getPackage() {
        return ListelementsPackage.eINSTANCE;
    }
}


/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl.ListelementsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ListelementsPackage
extends EPackage {
    public static final String eNAME = "listelements";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/le";
    public static final String eNS_PREFIX = "";
    public static final ListelementsPackage eINSTANCE = ListelementsPackageImpl.init();
    public static final int DEF_ITEM = 0;
    public static final int DEF_ITEM__GCHECKSUM = 0;
    public static final int DEF_ITEM__GTIMESTAMP = 1;
    public static final int DEF_ITEM__CHECKSUM = 2;
    public static final int DEF_ITEM__TIMESTAMP = 3;
    public static final int DEF_ITEM__GSHORT_NAME = 4;
    public static final int DEF_ITEM__SHORT_NAME = 5;
    public static final int DEF_ITEM__LONG_NAME = 6;
    public static final int DEF_ITEM__SI = 7;
    public static final int DEF_ITEM__VIEW = 8;
    public static final int DEF_ITEM__BREAK = 9;
    public static final int DEF_ITEM__KEEP_WITH_PREVIOUS = 10;
    public static final int DEF_ITEM__DEF_LIST = 11;
    public static final int DEF_ITEM__HELP_ENTRY = 12;
    public static final int DEF_ITEM__DEF = 13;
    public static final int DEF_ITEM__VARIATION_POINT = 14;
    public static final int DEF_ITEM_FEATURE_COUNT = 15;
    public static final int DEF_LIST = 1;
    public static final int DEF_LIST__GCHECKSUM = 0;
    public static final int DEF_LIST__GTIMESTAMP = 1;
    public static final int DEF_LIST__CHECKSUM = 2;
    public static final int DEF_LIST__TIMESTAMP = 3;
    public static final int DEF_LIST__SI = 4;
    public static final int DEF_LIST__VIEW = 5;
    public static final int DEF_LIST__BREAK = 6;
    public static final int DEF_LIST__KEEP_WITH_PREVIOUS = 7;
    public static final int DEF_LIST__DOCUMENTATION_BLOCK = 8;
    public static final int DEF_LIST__DEF_ITEMS = 9;
    public static final int DEF_LIST__VARIATION_POINT = 10;
    public static final int DEF_LIST_FEATURE_COUNT = 11;
    public static final int INDENT_SAMPLE = 2;
    public static final int INDENT_SAMPLE__GCHECKSUM = 0;
    public static final int INDENT_SAMPLE__GTIMESTAMP = 1;
    public static final int INDENT_SAMPLE__CHECKSUM = 2;
    public static final int INDENT_SAMPLE__TIMESTAMP = 3;
    public static final int INDENT_SAMPLE__LABELED_LIST = 4;
    public static final int INDENT_SAMPLE__ITEM_LABEL_POS = 5;
    public static final int INDENT_SAMPLE__L2S = 6;
    public static final int INDENT_SAMPLE_FEATURE_COUNT = 7;
    public static final int ITEM = 3;
    public static final int ITEM__GCHECKSUM = 0;
    public static final int ITEM__GTIMESTAMP = 1;
    public static final int ITEM__CHECKSUM = 2;
    public static final int ITEM__TIMESTAMP = 3;
    public static final int ITEM__SI = 4;
    public static final int ITEM__VIEW = 5;
    public static final int ITEM__BREAK = 6;
    public static final int ITEM__KEEP_WITH_PREVIOUS = 7;
    public static final int ITEM__LIST = 8;
    public static final int ITEM__ITEM_CONTENTS = 9;
    public static final int ITEM__VARIATION_POINT = 10;
    public static final int ITEM_FEATURE_COUNT = 11;
    public static final int LABELED_ITEM = 4;
    public static final int LABELED_ITEM__GCHECKSUM = 0;
    public static final int LABELED_ITEM__GTIMESTAMP = 1;
    public static final int LABELED_ITEM__CHECKSUM = 2;
    public static final int LABELED_ITEM__TIMESTAMP = 3;
    public static final int LABELED_ITEM__SI = 4;
    public static final int LABELED_ITEM__VIEW = 5;
    public static final int LABELED_ITEM__BREAK = 6;
    public static final int LABELED_ITEM__KEEP_WITH_PREVIOUS = 7;
    public static final int LABELED_ITEM__LABELED_LIST = 8;
    public static final int LABELED_ITEM__HELP_ENTRY = 9;
    public static final int LABELED_ITEM__ITEM_LABEL = 10;
    public static final int LABELED_ITEM__ITEM_CONTENTS = 11;
    public static final int LABELED_ITEM__VARIATION_POINT = 12;
    public static final int LABELED_ITEM_FEATURE_COUNT = 13;
    public static final int LABELED_LIST = 5;
    public static final int LABELED_LIST__GCHECKSUM = 0;
    public static final int LABELED_LIST__GTIMESTAMP = 1;
    public static final int LABELED_LIST__CHECKSUM = 2;
    public static final int LABELED_LIST__TIMESTAMP = 3;
    public static final int LABELED_LIST__SI = 4;
    public static final int LABELED_LIST__VIEW = 5;
    public static final int LABELED_LIST__BREAK = 6;
    public static final int LABELED_LIST__KEEP_WITH_PREVIOUS = 7;
    public static final int LABELED_LIST__DOCUMENTATION_BLOCK = 8;
    public static final int LABELED_LIST__INDENT_SAMPLE = 9;
    public static final int LABELED_LIST__LABELED_ITEMS = 10;
    public static final int LABELED_LIST__VARIATION_POINT = 11;
    public static final int LABELED_LIST_FEATURE_COUNT = 12;
    public static final int LIST = 6;
    public static final int LIST__GCHECKSUM = 0;
    public static final int LIST__GTIMESTAMP = 1;
    public static final int LIST__CHECKSUM = 2;
    public static final int LIST__TIMESTAMP = 3;
    public static final int LIST__SI = 4;
    public static final int LIST__VIEW = 5;
    public static final int LIST__BREAK = 6;
    public static final int LIST__KEEP_WITH_PREVIOUS = 7;
    public static final int LIST__DOCUMENTATION_BLOCK = 8;
    public static final int LIST__TYPE = 9;
    public static final int LIST__ITEMS = 10;
    public static final int LIST__VARIATION_POINT = 11;
    public static final int LIST_FEATURE_COUNT = 12;
    public static final int ITEM_LABEL_POS_ENUM = 7;
    public static final int LIST_ENUM = 8;

    public EClass getDefItem();

    public EReference getDefItem_DefList();

    public EAttribute getDefItem_HelpEntry();

    public EReference getDefItem_Def();

    public EReference getDefItem_VariationPoint();

    public EClass getDefList();

    public EReference getDefList_DocumentationBlock();

    public EReference getDefList_DefItems();

    public EReference getDefList_VariationPoint();

    public EClass getIndentSample();

    public EReference getIndentSample_LabeledList();

    public EAttribute getIndentSample_ItemLabelPos();

    public EReference getIndentSample_L2s();

    public EClass getItem();

    public EReference getItem_List();

    public EReference getItem_ItemContents();

    public EReference getItem_VariationPoint();

    public EClass getLabeledItem();

    public EReference getLabeledItem_LabeledList();

    public EAttribute getLabeledItem_HelpEntry();

    public EReference getLabeledItem_ItemLabel();

    public EReference getLabeledItem_ItemContents();

    public EReference getLabeledItem_VariationPoint();

    public EClass getLabeledList();

    public EReference getLabeledList_DocumentationBlock();

    public EReference getLabeledList_IndentSample();

    public EReference getLabeledList_LabeledItems();

    public EReference getLabeledList_VariationPoint();

    public EClass getList();

    public EReference getList_DocumentationBlock();

    public EAttribute getList_Type();

    public EReference getList_Items();

    public EReference getList_VariationPoint();

    public EEnum getItemLabelPosEnum();

    public EEnum getListEnum();

    public ListelementsFactory getListelementsFactory();

    public static interface Literals {
        public static final EClass DEF_ITEM = eINSTANCE.getDefItem();
        public static final EReference DEF_ITEM__DEF_LIST = eINSTANCE.getDefItem_DefList();
        public static final EAttribute DEF_ITEM__HELP_ENTRY = eINSTANCE.getDefItem_HelpEntry();
        public static final EReference DEF_ITEM__DEF = eINSTANCE.getDefItem_Def();
        public static final EReference DEF_ITEM__VARIATION_POINT = eINSTANCE.getDefItem_VariationPoint();
        public static final EClass DEF_LIST = eINSTANCE.getDefList();
        public static final EReference DEF_LIST__DOCUMENTATION_BLOCK = eINSTANCE.getDefList_DocumentationBlock();
        public static final EReference DEF_LIST__DEF_ITEMS = eINSTANCE.getDefList_DefItems();
        public static final EReference DEF_LIST__VARIATION_POINT = eINSTANCE.getDefList_VariationPoint();
        public static final EClass INDENT_SAMPLE = eINSTANCE.getIndentSample();
        public static final EReference INDENT_SAMPLE__LABELED_LIST = eINSTANCE.getIndentSample_LabeledList();
        public static final EAttribute INDENT_SAMPLE__ITEM_LABEL_POS = eINSTANCE.getIndentSample_ItemLabelPos();
        public static final EReference INDENT_SAMPLE__L2S = eINSTANCE.getIndentSample_L2s();
        public static final EClass ITEM = eINSTANCE.getItem();
        public static final EReference ITEM__LIST = eINSTANCE.getItem_List();
        public static final EReference ITEM__ITEM_CONTENTS = eINSTANCE.getItem_ItemContents();
        public static final EReference ITEM__VARIATION_POINT = eINSTANCE.getItem_VariationPoint();
        public static final EClass LABELED_ITEM = eINSTANCE.getLabeledItem();
        public static final EReference LABELED_ITEM__LABELED_LIST = eINSTANCE.getLabeledItem_LabeledList();
        public static final EAttribute LABELED_ITEM__HELP_ENTRY = eINSTANCE.getLabeledItem_HelpEntry();
        public static final EReference LABELED_ITEM__ITEM_LABEL = eINSTANCE.getLabeledItem_ItemLabel();
        public static final EReference LABELED_ITEM__ITEM_CONTENTS = eINSTANCE.getLabeledItem_ItemContents();
        public static final EReference LABELED_ITEM__VARIATION_POINT = eINSTANCE.getLabeledItem_VariationPoint();
        public static final EClass LABELED_LIST = eINSTANCE.getLabeledList();
        public static final EReference LABELED_LIST__DOCUMENTATION_BLOCK = eINSTANCE.getLabeledList_DocumentationBlock();
        public static final EReference LABELED_LIST__INDENT_SAMPLE = eINSTANCE.getLabeledList_IndentSample();
        public static final EReference LABELED_LIST__LABELED_ITEMS = eINSTANCE.getLabeledList_LabeledItems();
        public static final EReference LABELED_LIST__VARIATION_POINT = eINSTANCE.getLabeledList_VariationPoint();
        public static final EClass LIST = eINSTANCE.getList();
        public static final EReference LIST__DOCUMENTATION_BLOCK = eINSTANCE.getList_DocumentationBlock();
        public static final EAttribute LIST__TYPE = eINSTANCE.getList_Type();
        public static final EReference LIST__ITEMS = eINSTANCE.getList_Items();
        public static final EReference LIST__VARIATION_POINT = eINSTANCE.getList_VariationPoint();
        public static final EEnum ITEM_LABEL_POS_ENUM = eINSTANCE.getItemLabelPosEnum();
        public static final EEnum LIST_ENUM = eINSTANCE.getListEnum();
    }
}


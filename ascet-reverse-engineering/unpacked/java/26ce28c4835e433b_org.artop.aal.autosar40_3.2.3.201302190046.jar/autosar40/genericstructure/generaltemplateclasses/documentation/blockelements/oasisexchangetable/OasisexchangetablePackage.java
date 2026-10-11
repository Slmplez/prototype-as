/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetableFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl.OasisexchangetablePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface OasisexchangetablePackage
extends EPackage {
    public static final String eNAME = "oasisexchangetable";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/oet";
    public static final String eNS_PREFIX = "";
    public static final OasisexchangetablePackage eINSTANCE = OasisexchangetablePackageImpl.init();
    public static final int COLSPEC = 0;
    public static final int COLSPEC__GCHECKSUM = 0;
    public static final int COLSPEC__GTIMESTAMP = 1;
    public static final int COLSPEC__CHECKSUM = 2;
    public static final int COLSPEC__TIMESTAMP = 3;
    public static final int COLSPEC__TGROUP = 4;
    public static final int COLSPEC__ALIGN = 5;
    public static final int COLSPEC__COLNAME = 6;
    public static final int COLSPEC__COLNUM = 7;
    public static final int COLSPEC__COLSEP = 8;
    public static final int COLSPEC__COLWIDTH = 9;
    public static final int COLSPEC__ROWSEP = 10;
    public static final int COLSPEC_FEATURE_COUNT = 11;
    public static final int ENTRY = 1;
    public static final int ENTRY__GCHECKSUM = 0;
    public static final int ENTRY__GTIMESTAMP = 1;
    public static final int ENTRY__CHECKSUM = 2;
    public static final int ENTRY__TIMESTAMP = 3;
    public static final int ENTRY__ROW = 4;
    public static final int ENTRY__ALIGN = 5;
    public static final int ENTRY__COLNAME = 6;
    public static final int ENTRY__COLSEP = 7;
    public static final int ENTRY__ENTRY_CONTENTS = 8;
    public static final int ENTRY__MOREROWS = 9;
    public static final int ENTRY__NAMEEND = 10;
    public static final int ENTRY__NAMEST = 11;
    public static final int ENTRY__ROTATE = 12;
    public static final int ENTRY__ROWSEP = 13;
    public static final int ENTRY__SPANNAME = 14;
    public static final int ENTRY__VALIGN = 15;
    public static final int ENTRY_FEATURE_COUNT = 16;
    public static final int ROW = 2;
    public static final int ROW__GCHECKSUM = 0;
    public static final int ROW__GTIMESTAMP = 1;
    public static final int ROW__CHECKSUM = 2;
    public static final int ROW__TIMESTAMP = 3;
    public static final int ROW__TBODY = 4;
    public static final int ROW__ROWSEP = 5;
    public static final int ROW__VALIGN = 6;
    public static final int ROW__ENTRIES = 7;
    public static final int ROW__VARIATION_POINT = 8;
    public static final int ROW_FEATURE_COUNT = 9;
    public static final int TBODY = 3;
    public static final int TBODY__GCHECKSUM = 0;
    public static final int TBODY__GTIMESTAMP = 1;
    public static final int TBODY__CHECKSUM = 2;
    public static final int TBODY__TIMESTAMP = 3;
    public static final int TBODY__VALIGN = 4;
    public static final int TBODY__ROWS = 5;
    public static final int TBODY_FEATURE_COUNT = 6;
    public static final int TGROUP = 4;
    public static final int TGROUP__GCHECKSUM = 0;
    public static final int TGROUP__GTIMESTAMP = 1;
    public static final int TGROUP__CHECKSUM = 2;
    public static final int TGROUP__TIMESTAMP = 3;
    public static final int TGROUP__TABLE = 4;
    public static final int TGROUP__ALIGN = 5;
    public static final int TGROUP__COLS = 6;
    public static final int TGROUP__COLSEP = 7;
    public static final int TGROUP__ROWSEP = 8;
    public static final int TGROUP__COLSPECS = 9;
    public static final int TGROUP__THEAD = 10;
    public static final int TGROUP__TFOOT = 11;
    public static final int TGROUP__TBODY = 12;
    public static final int TGROUP_FEATURE_COUNT = 13;
    public static final int TABLE = 5;
    public static final int TABLE__GCHECKSUM = 0;
    public static final int TABLE__GTIMESTAMP = 1;
    public static final int TABLE__CHECKSUM = 2;
    public static final int TABLE__TIMESTAMP = 3;
    public static final int TABLE__SI = 4;
    public static final int TABLE__VIEW = 5;
    public static final int TABLE__BREAK = 6;
    public static final int TABLE__KEEP_WITH_PREVIOUS = 7;
    public static final int TABLE__TOPIC_CONTENT = 8;
    public static final int TABLE__COLSEP = 9;
    public static final int TABLE__FLOAT = 10;
    public static final int TABLE__FRAME = 11;
    public static final int TABLE__HELP_ENTRY = 12;
    public static final int TABLE__ORIENT = 13;
    public static final int TABLE__PGWIDE = 14;
    public static final int TABLE__ROWSEP = 15;
    public static final int TABLE__TABSTYLE = 16;
    public static final int TABLE__TABLE_CAPTION = 17;
    public static final int TABLE__TGROUPS = 18;
    public static final int TABLE__VARIATION_POINT = 19;
    public static final int TABLE_FEATURE_COUNT = 20;
    public static final int ALIGN_ENUM = 6;
    public static final int VALIGN_ENUM = 7;
    public static final int FLOAT_ENUM = 8;
    public static final int PGWIDE_ENUM = 9;
    public static final int FRAME_ENUM = 10;
    public static final int ORIENT_ENUM = 11;
    public static final int TABLE_SEPARATOR_STRING = 12;

    public EClass getColspec();

    public EReference getColspec_Tgroup();

    public EAttribute getColspec_Align();

    public EAttribute getColspec_Colname();

    public EAttribute getColspec_Colnum();

    public EAttribute getColspec_Colsep();

    public EAttribute getColspec_Colwidth();

    public EAttribute getColspec_Rowsep();

    public EClass getEntry();

    public EReference getEntry_Row();

    public EAttribute getEntry_Align();

    public EAttribute getEntry_Colname();

    public EAttribute getEntry_Colsep();

    public EReference getEntry_EntryContents();

    public EAttribute getEntry_Morerows();

    public EAttribute getEntry_Nameend();

    public EAttribute getEntry_Namest();

    public EAttribute getEntry_Rotate();

    public EAttribute getEntry_Rowsep();

    public EAttribute getEntry_Spanname();

    public EAttribute getEntry_Valign();

    public EClass getRow();

    public EReference getRow_Tbody();

    public EAttribute getRow_Rowsep();

    public EAttribute getRow_Valign();

    public EReference getRow_Entries();

    public EReference getRow_VariationPoint();

    public EClass getTbody();

    public EAttribute getTbody_Valign();

    public EReference getTbody_Rows();

    public EClass getTgroup();

    public EReference getTgroup_Table();

    public EAttribute getTgroup_Align();

    public EAttribute getTgroup_Cols();

    public EAttribute getTgroup_Colsep();

    public EAttribute getTgroup_Rowsep();

    public EReference getTgroup_Colspecs();

    public EReference getTgroup_Thead();

    public EReference getTgroup_Tfoot();

    public EReference getTgroup_Tbody();

    public EClass getTable();

    public EReference getTable_TopicContent();

    public EAttribute getTable_Colsep();

    public EAttribute getTable_Float();

    public EAttribute getTable_Frame();

    public EAttribute getTable_HelpEntry();

    public EAttribute getTable_Orient();

    public EAttribute getTable_Pgwide();

    public EAttribute getTable_Rowsep();

    public EAttribute getTable_Tabstyle();

    public EReference getTable_TableCaption();

    public EReference getTable_Tgroups();

    public EReference getTable_VariationPoint();

    public EEnum getAlignEnum();

    public EEnum getValignEnum();

    public EEnum getFloatEnum();

    public EEnum getPgwideEnum();

    public EEnum getFrameEnum();

    public EEnum getOrientEnum();

    public EDataType getTableSeparatorString();

    public OasisexchangetableFactory getOasisexchangetableFactory();

    public static interface Literals {
        public static final EClass COLSPEC = eINSTANCE.getColspec();
        public static final EReference COLSPEC__TGROUP = eINSTANCE.getColspec_Tgroup();
        public static final EAttribute COLSPEC__ALIGN = eINSTANCE.getColspec_Align();
        public static final EAttribute COLSPEC__COLNAME = eINSTANCE.getColspec_Colname();
        public static final EAttribute COLSPEC__COLNUM = eINSTANCE.getColspec_Colnum();
        public static final EAttribute COLSPEC__COLSEP = eINSTANCE.getColspec_Colsep();
        public static final EAttribute COLSPEC__COLWIDTH = eINSTANCE.getColspec_Colwidth();
        public static final EAttribute COLSPEC__ROWSEP = eINSTANCE.getColspec_Rowsep();
        public static final EClass ENTRY = eINSTANCE.getEntry();
        public static final EReference ENTRY__ROW = eINSTANCE.getEntry_Row();
        public static final EAttribute ENTRY__ALIGN = eINSTANCE.getEntry_Align();
        public static final EAttribute ENTRY__COLNAME = eINSTANCE.getEntry_Colname();
        public static final EAttribute ENTRY__COLSEP = eINSTANCE.getEntry_Colsep();
        public static final EReference ENTRY__ENTRY_CONTENTS = eINSTANCE.getEntry_EntryContents();
        public static final EAttribute ENTRY__MOREROWS = eINSTANCE.getEntry_Morerows();
        public static final EAttribute ENTRY__NAMEEND = eINSTANCE.getEntry_Nameend();
        public static final EAttribute ENTRY__NAMEST = eINSTANCE.getEntry_Namest();
        public static final EAttribute ENTRY__ROTATE = eINSTANCE.getEntry_Rotate();
        public static final EAttribute ENTRY__ROWSEP = eINSTANCE.getEntry_Rowsep();
        public static final EAttribute ENTRY__SPANNAME = eINSTANCE.getEntry_Spanname();
        public static final EAttribute ENTRY__VALIGN = eINSTANCE.getEntry_Valign();
        public static final EClass ROW = eINSTANCE.getRow();
        public static final EReference ROW__TBODY = eINSTANCE.getRow_Tbody();
        public static final EAttribute ROW__ROWSEP = eINSTANCE.getRow_Rowsep();
        public static final EAttribute ROW__VALIGN = eINSTANCE.getRow_Valign();
        public static final EReference ROW__ENTRIES = eINSTANCE.getRow_Entries();
        public static final EReference ROW__VARIATION_POINT = eINSTANCE.getRow_VariationPoint();
        public static final EClass TBODY = eINSTANCE.getTbody();
        public static final EAttribute TBODY__VALIGN = eINSTANCE.getTbody_Valign();
        public static final EReference TBODY__ROWS = eINSTANCE.getTbody_Rows();
        public static final EClass TGROUP = eINSTANCE.getTgroup();
        public static final EReference TGROUP__TABLE = eINSTANCE.getTgroup_Table();
        public static final EAttribute TGROUP__ALIGN = eINSTANCE.getTgroup_Align();
        public static final EAttribute TGROUP__COLS = eINSTANCE.getTgroup_Cols();
        public static final EAttribute TGROUP__COLSEP = eINSTANCE.getTgroup_Colsep();
        public static final EAttribute TGROUP__ROWSEP = eINSTANCE.getTgroup_Rowsep();
        public static final EReference TGROUP__COLSPECS = eINSTANCE.getTgroup_Colspecs();
        public static final EReference TGROUP__THEAD = eINSTANCE.getTgroup_Thead();
        public static final EReference TGROUP__TFOOT = eINSTANCE.getTgroup_Tfoot();
        public static final EReference TGROUP__TBODY = eINSTANCE.getTgroup_Tbody();
        public static final EClass TABLE = eINSTANCE.getTable();
        public static final EReference TABLE__TOPIC_CONTENT = eINSTANCE.getTable_TopicContent();
        public static final EAttribute TABLE__COLSEP = eINSTANCE.getTable_Colsep();
        public static final EAttribute TABLE__FLOAT = eINSTANCE.getTable_Float();
        public static final EAttribute TABLE__FRAME = eINSTANCE.getTable_Frame();
        public static final EAttribute TABLE__HELP_ENTRY = eINSTANCE.getTable_HelpEntry();
        public static final EAttribute TABLE__ORIENT = eINSTANCE.getTable_Orient();
        public static final EAttribute TABLE__PGWIDE = eINSTANCE.getTable_Pgwide();
        public static final EAttribute TABLE__ROWSEP = eINSTANCE.getTable_Rowsep();
        public static final EAttribute TABLE__TABSTYLE = eINSTANCE.getTable_Tabstyle();
        public static final EReference TABLE__TABLE_CAPTION = eINSTANCE.getTable_TableCaption();
        public static final EReference TABLE__TGROUPS = eINSTANCE.getTable_Tgroups();
        public static final EReference TABLE__VARIATION_POINT = eINSTANCE.getTable_VariationPoint();
        public static final EEnum ALIGN_ENUM = eINSTANCE.getAlignEnum();
        public static final EEnum VALIGN_ENUM = eINSTANCE.getValignEnum();
        public static final EEnum FLOAT_ENUM = eINSTANCE.getFloatEnum();
        public static final EEnum PGWIDE_ENUM = eINSTANCE.getPgwideEnum();
        public static final EEnum FRAME_ENUM = eINSTANCE.getFrameEnum();
        public static final EEnum ORIENT_ENUM = eINSTANCE.getOrientEnum();
        public static final EDataType TABLE_SEPARATOR_STRING = eINSTANCE.getTableSeparatorString();
    }
}


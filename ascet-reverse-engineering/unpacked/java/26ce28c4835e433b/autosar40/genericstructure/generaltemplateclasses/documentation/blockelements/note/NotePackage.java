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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.NoteFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.impl.NotePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface NotePackage
extends EPackage {
    public static final String eNAME = "note";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/n";
    public static final String eNS_PREFIX = "";
    public static final NotePackage eINSTANCE = NotePackageImpl.init();
    public static final int NOTE = 0;
    public static final int NOTE__GCHECKSUM = 0;
    public static final int NOTE__GTIMESTAMP = 1;
    public static final int NOTE__CHECKSUM = 2;
    public static final int NOTE__TIMESTAMP = 3;
    public static final int NOTE__SI = 4;
    public static final int NOTE__VIEW = 5;
    public static final int NOTE__BREAK = 6;
    public static final int NOTE__KEEP_WITH_PREVIOUS = 7;
    public static final int NOTE__DOCUMENTATION_BLOCK = 8;
    public static final int NOTE__NOTE_TYPE = 9;
    public static final int NOTE__LABEL = 10;
    public static final int NOTE__NOTE_TEXT = 11;
    public static final int NOTE__VARIATION_POINT = 12;
    public static final int NOTE_FEATURE_COUNT = 13;
    public static final int NOTE_TYPE_ENUM = 1;

    public EClass getNote();

    public EReference getNote_DocumentationBlock();

    public EAttribute getNote_NoteType();

    public EReference getNote_Label();

    public EReference getNote_NoteText();

    public EReference getNote_VariationPoint();

    public EEnum getNoteTypeEnum();

    public NoteFactory getNoteFactory();

    public static interface Literals {
        public static final EClass NOTE = eINSTANCE.getNote();
        public static final EReference NOTE__DOCUMENTATION_BLOCK = eINSTANCE.getNote_DocumentationBlock();
        public static final EAttribute NOTE__NOTE_TYPE = eINSTANCE.getNote_NoteType();
        public static final EReference NOTE__LABEL = eINSTANCE.getNote_Label();
        public static final EReference NOTE__NOTE_TEXT = eINSTANCE.getNote_NoteText();
        public static final EReference NOTE__VARIATION_POINT = eINSTANCE.getNote_VariationPoint();
        public static final EEnum NOTE_TYPE_ENUM = eINSTANCE.getNoteTypeEnum();
    }
}


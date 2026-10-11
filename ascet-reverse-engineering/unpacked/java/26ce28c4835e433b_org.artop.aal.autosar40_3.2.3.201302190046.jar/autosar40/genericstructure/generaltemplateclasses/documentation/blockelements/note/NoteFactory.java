/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.Note;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.NotePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.impl.NoteFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface NoteFactory
extends EFactory {
    public static final NoteFactory eINSTANCE = NoteFactoryImpl.init();

    public Note createNote();

    public NotePackage getNotePackage();
}


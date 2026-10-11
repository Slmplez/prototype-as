/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.util.Switch
 */
package com.etas.amd620.core.Formulas.util;

import com.etas.amd620.core.Formulas.ColorT;
import com.etas.amd620.core.Formulas.DocumentRoot;
import com.etas.amd620.core.Formulas.FileReferenceT;
import com.etas.amd620.core.Formulas.FormattedTextT;
import com.etas.amd620.core.Formulas.FormulaComplexType;
import com.etas.amd620.core.Formulas.FormulasPackage;
import com.etas.amd620.core.Formulas.FormulasType;
import com.etas.amd620.core.Formulas.GenericDataT;
import com.etas.amd620.core.Formulas.IconT;
import com.etas.amd620.core.Formulas.IntervalT;
import com.etas.amd620.core.Formulas.ItemRefT;
import com.etas.amd620.core.Formulas.NoteType;
import com.etas.amd620.core.Formulas.NotesT;
import com.etas.amd620.core.Formulas.OptionT;
import com.etas.amd620.core.Formulas.ParameterType;
import com.etas.amd620.core.Formulas.PointT;
import com.etas.amd620.core.Formulas.SizeT;
import com.etas.amd620.core.Formulas.TimeStampT;
import com.etas.amd620.core.Formulas.ViewType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.Switch;

public class FormulasSwitch<T>
extends Switch<T> {
    protected static FormulasPackage modelPackage;

    public FormulasSwitch() {
        if (modelPackage == null) {
            modelPackage = FormulasPackage.eINSTANCE;
        }
    }

    protected boolean isSwitchFor(EPackage ePackage) {
        return ePackage == modelPackage;
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                ColorT colorT = (ColorT)theEObject;
                T result = this.caseColorT(colorT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                DocumentRoot documentRoot = (DocumentRoot)theEObject;
                T result = this.caseDocumentRoot(documentRoot);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                FileReferenceT fileReferenceT = (FileReferenceT)theEObject;
                T result = this.caseFileReferenceT(fileReferenceT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                FormattedTextT formattedTextT = (FormattedTextT)theEObject;
                T result = this.caseFormattedTextT(formattedTextT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                FormulaComplexType formulaComplexType = (FormulaComplexType)theEObject;
                T result = this.caseFormulaComplexType(formulaComplexType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                FormulasType formulasType = (FormulasType)theEObject;
                T result = this.caseFormulasType(formulasType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                GenericDataT genericDataT = (GenericDataT)theEObject;
                T result = this.caseGenericDataT(genericDataT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                IconT iconT = (IconT)theEObject;
                T result = this.caseIconT(iconT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                IntervalT intervalT = (IntervalT)theEObject;
                T result = this.caseIntervalT(intervalT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                ItemRefT itemRefT = (ItemRefT)theEObject;
                T result = this.caseItemRefT(itemRefT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                NotesT notesT = (NotesT)theEObject;
                T result = this.caseNotesT(notesT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                NoteType noteType = (NoteType)theEObject;
                T result = this.caseNoteType(noteType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                OptionT optionT = (OptionT)theEObject;
                T result = this.caseOptionT(optionT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                ParameterType parameterType = (ParameterType)theEObject;
                T result = this.caseParameterType(parameterType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                PointT pointT = (PointT)theEObject;
                T result = this.casePointT(pointT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                SizeT sizeT = (SizeT)theEObject;
                T result = this.caseSizeT(sizeT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                TimeStampT timeStampT = (TimeStampT)theEObject;
                T result = this.caseTimeStampT(timeStampT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                ViewType viewType = (ViewType)theEObject;
                T result = this.caseViewType(viewType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseColorT(ColorT object) {
        return null;
    }

    public T caseDocumentRoot(DocumentRoot object) {
        return null;
    }

    public T caseFileReferenceT(FileReferenceT object) {
        return null;
    }

    public T caseFormattedTextT(FormattedTextT object) {
        return null;
    }

    public T caseFormulaComplexType(FormulaComplexType object) {
        return null;
    }

    public T caseFormulasType(FormulasType object) {
        return null;
    }

    public T caseGenericDataT(GenericDataT object) {
        return null;
    }

    public T caseIconT(IconT object) {
        return null;
    }

    public T caseIntervalT(IntervalT object) {
        return null;
    }

    public T caseItemRefT(ItemRefT object) {
        return null;
    }

    public T caseNotesT(NotesT object) {
        return null;
    }

    public T caseNoteType(NoteType object) {
        return null;
    }

    public T caseOptionT(OptionT object) {
        return null;
    }

    public T caseParameterType(ParameterType object) {
        return null;
    }

    public T casePointT(PointT object) {
        return null;
    }

    public T caseSizeT(SizeT object) {
        return null;
    }

    public T caseTimeStampT(TimeStampT object) {
        return null;
    }

    public T caseViewType(ViewType object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}


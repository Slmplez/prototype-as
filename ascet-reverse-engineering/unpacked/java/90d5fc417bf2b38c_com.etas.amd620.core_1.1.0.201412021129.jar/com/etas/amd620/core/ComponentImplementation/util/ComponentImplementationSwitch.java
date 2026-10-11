/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.util.Switch
 */
package com.etas.amd620.core.ComponentImplementation.util;

import com.etas.amd620.core.ComponentImplementation.ColorT;
import com.etas.amd620.core.ComponentImplementation.ComplexImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComplexReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationType;
import com.etas.amd620.core.ComponentImplementation.DimensionalImplementationT;
import com.etas.amd620.core.ComponentImplementation.DimensionalReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.DistributionImplementationType;
import com.etas.amd620.core.ComponentImplementation.DocumentRoot;
import com.etas.amd620.core.ComponentImplementation.ElementImplementationT;
import com.etas.amd620.core.ComponentImplementation.ElementImplementationType;
import com.etas.amd620.core.ComponentImplementation.FileReferenceT;
import com.etas.amd620.core.ComponentImplementation.FormattedTextT;
import com.etas.amd620.core.ComponentImplementation.GenericDataT;
import com.etas.amd620.core.ComponentImplementation.IconT;
import com.etas.amd620.core.ComponentImplementation.ImplementationCastImplementationType;
import com.etas.amd620.core.ComponentImplementation.ImplementationEntryT;
import com.etas.amd620.core.ComponentImplementation.ImplementationSetT;
import com.etas.amd620.core.ComponentImplementation.ImplementationSetType;
import com.etas.amd620.core.ComponentImplementation.ImplementationVariantT;
import com.etas.amd620.core.ComponentImplementation.IntervalT;
import com.etas.amd620.core.ComponentImplementation.ItemRefT;
import com.etas.amd620.core.ComponentImplementation.LogicImplementationT;
import com.etas.amd620.core.ComponentImplementation.MethodImplementationT;
import com.etas.amd620.core.ComponentImplementation.NoteType;
import com.etas.amd620.core.ComponentImplementation.NotesT;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationBaseT;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationT;
import com.etas.amd620.core.ComponentImplementation.OneDImplementationType;
import com.etas.amd620.core.ComponentImplementation.OptionT;
import com.etas.amd620.core.ComponentImplementation.PointT;
import com.etas.amd620.core.ComponentImplementation.PrimitiveImplementationT;
import com.etas.amd620.core.ComponentImplementation.ResourceImplementationT;
import com.etas.amd620.core.ComponentImplementation.ResourceImplementationType;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import com.etas.amd620.core.ComponentImplementation.SizeT;
import com.etas.amd620.core.ComponentImplementation.TemplateImplementationT;
import com.etas.amd620.core.ComponentImplementation.TimeStampT;
import com.etas.amd620.core.ComponentImplementation.TwoDImplementationType;
import com.etas.amd620.core.ComponentImplementation.ViewType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.Switch;

public class ComponentImplementationSwitch<T>
extends Switch<T> {
    protected static ComponentImplementationPackage modelPackage;

    public ComponentImplementationSwitch() {
        if (modelPackage == null) {
            modelPackage = ComponentImplementationPackage.eINSTANCE;
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
                ComplexImplementationT complexImplementationT = (ComplexImplementationT)theEObject;
                T result = this.caseComplexImplementationT(complexImplementationT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ComplexReferenceImplementationT complexReferenceImplementationT = (ComplexReferenceImplementationT)theEObject;
                T result = this.caseComplexReferenceImplementationT(complexReferenceImplementationT);
                if (result == null) {
                    result = this.caseComplexImplementationT(complexReferenceImplementationT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ComponentImplementationType componentImplementationType = (ComponentImplementationType)theEObject;
                T result = this.caseComponentImplementationType(componentImplementationType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                DimensionalImplementationT dimensionalImplementationT = (DimensionalImplementationT)theEObject;
                T result = this.caseDimensionalImplementationT(dimensionalImplementationT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                DimensionalReferenceImplementationT dimensionalReferenceImplementationT = (DimensionalReferenceImplementationT)theEObject;
                T result = this.caseDimensionalReferenceImplementationT(dimensionalReferenceImplementationT);
                if (result == null) {
                    result = this.caseDimensionalImplementationT(dimensionalReferenceImplementationT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                DistributionImplementationType distributionImplementationType = (DistributionImplementationType)theEObject;
                T result = this.caseDistributionImplementationType(distributionImplementationType);
                if (result == null) {
                    result = this.caseScalarImplementationT(distributionImplementationType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                DocumentRoot documentRoot = (DocumentRoot)theEObject;
                T result = this.caseDocumentRoot(documentRoot);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                ElementImplementationT elementImplementationT = (ElementImplementationT)theEObject;
                T result = this.caseElementImplementationT(elementImplementationT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                ElementImplementationType elementImplementationType = (ElementImplementationType)theEObject;
                T result = this.caseElementImplementationType(elementImplementationType);
                if (result == null) {
                    result = this.caseElementImplementationT(elementImplementationType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                FileReferenceT fileReferenceT = (FileReferenceT)theEObject;
                T result = this.caseFileReferenceT(fileReferenceT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                FormattedTextT formattedTextT = (FormattedTextT)theEObject;
                T result = this.caseFormattedTextT(formattedTextT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                GenericDataT genericDataT = (GenericDataT)theEObject;
                T result = this.caseGenericDataT(genericDataT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                IconT iconT = (IconT)theEObject;
                T result = this.caseIconT(iconT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                ImplementationCastImplementationType implementationCastImplementationType = (ImplementationCastImplementationType)theEObject;
                T result = this.caseImplementationCastImplementationType(implementationCastImplementationType);
                if (result == null) {
                    result = this.caseNumericImplementationT(implementationCastImplementationType);
                }
                if (result == null) {
                    result = this.caseNumericImplementationBaseT(implementationCastImplementationType);
                }
                if (result == null) {
                    result = this.casePrimitiveImplementationT(implementationCastImplementationType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                ImplementationEntryT implementationEntryT = (ImplementationEntryT)theEObject;
                T result = this.caseImplementationEntryT(implementationEntryT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                ImplementationSetT implementationSetT = (ImplementationSetT)theEObject;
                T result = this.caseImplementationSetT(implementationSetT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                ImplementationSetType implementationSetType = (ImplementationSetType)theEObject;
                T result = this.caseImplementationSetType(implementationSetType);
                if (result == null) {
                    result = this.caseImplementationSetT(implementationSetType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                ImplementationVariantT implementationVariantT = (ImplementationVariantT)theEObject;
                T result = this.caseImplementationVariantT(implementationVariantT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                IntervalT intervalT = (IntervalT)theEObject;
                T result = this.caseIntervalT(intervalT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                ItemRefT itemRefT = (ItemRefT)theEObject;
                T result = this.caseItemRefT(itemRefT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                LogicImplementationT logicImplementationT = (LogicImplementationT)theEObject;
                T result = this.caseLogicImplementationT(logicImplementationT);
                if (result == null) {
                    result = this.casePrimitiveImplementationT(logicImplementationT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 22: {
                MethodImplementationT methodImplementationT = (MethodImplementationT)theEObject;
                T result = this.caseMethodImplementationT(methodImplementationT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 23: {
                NotesT notesT = (NotesT)theEObject;
                T result = this.caseNotesT(notesT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 24: {
                NoteType noteType = (NoteType)theEObject;
                T result = this.caseNoteType(noteType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 25: {
                NumericImplementationBaseT numericImplementationBaseT = (NumericImplementationBaseT)theEObject;
                T result = this.caseNumericImplementationBaseT(numericImplementationBaseT);
                if (result == null) {
                    result = this.casePrimitiveImplementationT(numericImplementationBaseT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 26: {
                NumericImplementationT numericImplementationT = (NumericImplementationT)theEObject;
                T result = this.caseNumericImplementationT(numericImplementationT);
                if (result == null) {
                    result = this.caseNumericImplementationBaseT(numericImplementationT);
                }
                if (result == null) {
                    result = this.casePrimitiveImplementationT(numericImplementationT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 27: {
                OneDImplementationType oneDImplementationType = (OneDImplementationType)theEObject;
                T result = this.caseOneDImplementationType(oneDImplementationType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 28: {
                OptionT optionT = (OptionT)theEObject;
                T result = this.caseOptionT(optionT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 29: {
                PointT pointT = (PointT)theEObject;
                T result = this.casePointT(pointT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 30: {
                PrimitiveImplementationT primitiveImplementationT = (PrimitiveImplementationT)theEObject;
                T result = this.casePrimitiveImplementationT(primitiveImplementationT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 31: {
                ResourceImplementationT resourceImplementationT = (ResourceImplementationT)theEObject;
                T result = this.caseResourceImplementationT(resourceImplementationT);
                if (result == null) {
                    result = this.casePrimitiveImplementationT(resourceImplementationT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 32: {
                ResourceImplementationType resourceImplementationType = (ResourceImplementationType)theEObject;
                T result = this.caseResourceImplementationType(resourceImplementationType);
                if (result == null) {
                    result = this.caseResourceImplementationT(resourceImplementationType);
                }
                if (result == null) {
                    result = this.casePrimitiveImplementationT(resourceImplementationType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 33: {
                ScalarImplementationT scalarImplementationT = (ScalarImplementationT)theEObject;
                T result = this.caseScalarImplementationT(scalarImplementationT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 34: {
                SizeT sizeT = (SizeT)theEObject;
                T result = this.caseSizeT(sizeT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 35: {
                TemplateImplementationT templateImplementationT = (TemplateImplementationT)theEObject;
                T result = this.caseTemplateImplementationT(templateImplementationT);
                if (result == null) {
                    result = this.caseNumericImplementationBaseT(templateImplementationT);
                }
                if (result == null) {
                    result = this.casePrimitiveImplementationT(templateImplementationT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 36: {
                TimeStampT timeStampT = (TimeStampT)theEObject;
                T result = this.caseTimeStampT(timeStampT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 37: {
                TwoDImplementationType twoDImplementationType = (TwoDImplementationType)theEObject;
                T result = this.caseTwoDImplementationType(twoDImplementationType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 38: {
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

    public T caseComplexImplementationT(ComplexImplementationT object) {
        return null;
    }

    public T caseComplexReferenceImplementationT(ComplexReferenceImplementationT object) {
        return null;
    }

    public T caseComponentImplementationType(ComponentImplementationType object) {
        return null;
    }

    public T caseDimensionalImplementationT(DimensionalImplementationT object) {
        return null;
    }

    public T caseDimensionalReferenceImplementationT(DimensionalReferenceImplementationT object) {
        return null;
    }

    public T caseDistributionImplementationType(DistributionImplementationType object) {
        return null;
    }

    public T caseDocumentRoot(DocumentRoot object) {
        return null;
    }

    public T caseElementImplementationT(ElementImplementationT object) {
        return null;
    }

    public T caseElementImplementationType(ElementImplementationType object) {
        return null;
    }

    public T caseFileReferenceT(FileReferenceT object) {
        return null;
    }

    public T caseFormattedTextT(FormattedTextT object) {
        return null;
    }

    public T caseGenericDataT(GenericDataT object) {
        return null;
    }

    public T caseIconT(IconT object) {
        return null;
    }

    public T caseImplementationCastImplementationType(ImplementationCastImplementationType object) {
        return null;
    }

    public T caseImplementationEntryT(ImplementationEntryT object) {
        return null;
    }

    public T caseImplementationSetT(ImplementationSetT object) {
        return null;
    }

    public T caseImplementationSetType(ImplementationSetType object) {
        return null;
    }

    public T caseImplementationVariantT(ImplementationVariantT object) {
        return null;
    }

    public T caseIntervalT(IntervalT object) {
        return null;
    }

    public T caseItemRefT(ItemRefT object) {
        return null;
    }

    public T caseLogicImplementationT(LogicImplementationT object) {
        return null;
    }

    public T caseMethodImplementationT(MethodImplementationT object) {
        return null;
    }

    public T caseNotesT(NotesT object) {
        return null;
    }

    public T caseNoteType(NoteType object) {
        return null;
    }

    public T caseNumericImplementationBaseT(NumericImplementationBaseT object) {
        return null;
    }

    public T caseNumericImplementationT(NumericImplementationT object) {
        return null;
    }

    public T caseOneDImplementationType(OneDImplementationType object) {
        return null;
    }

    public T caseOptionT(OptionT object) {
        return null;
    }

    public T casePointT(PointT object) {
        return null;
    }

    public T casePrimitiveImplementationT(PrimitiveImplementationT object) {
        return null;
    }

    public T caseResourceImplementationT(ResourceImplementationT object) {
        return null;
    }

    public T caseResourceImplementationType(ResourceImplementationType object) {
        return null;
    }

    public T caseScalarImplementationT(ScalarImplementationT object) {
        return null;
    }

    public T caseSizeT(SizeT object) {
        return null;
    }

    public T caseTemplateImplementationT(TemplateImplementationT object) {
        return null;
    }

    public T caseTimeStampT(TimeStampT object) {
        return null;
    }

    public T caseTwoDImplementationType(TwoDImplementationType object) {
        return null;
    }

    public T caseViewType(ViewType object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}


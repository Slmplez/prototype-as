/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.util.Switch
 */
package com.etas.amd620.core.ComponentData.util;

import com.etas.amd620.core.ComponentData.ArrayT;
import com.etas.amd620.core.ComponentData.ColorT;
import com.etas.amd620.core.ComponentData.ComplexDataT;
import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.ComponentDataType;
import com.etas.amd620.core.ComponentData.DataEntryT;
import com.etas.amd620.core.ComponentData.DataSetT;
import com.etas.amd620.core.ComponentData.DataVariantT;
import com.etas.amd620.core.ComponentData.DependencyT;
import com.etas.amd620.core.ComponentData.DimensionalDataT;
import com.etas.amd620.core.ComponentData.DimensionalTypeT;
import com.etas.amd620.core.ComponentData.DistributionInfoT;
import com.etas.amd620.core.ComponentData.DocumentRoot;
import com.etas.amd620.core.ComponentData.EnumerationDataT;
import com.etas.amd620.core.ComponentData.FileReferenceT;
import com.etas.amd620.core.ComponentData.FormattedTextT;
import com.etas.amd620.core.ComponentData.GenericDataT;
import com.etas.amd620.core.ComponentData.IconT;
import com.etas.amd620.core.ComponentData.IntervalT;
import com.etas.amd620.core.ComponentData.ItemRefT;
import com.etas.amd620.core.ComponentData.LocalType;
import com.etas.amd620.core.ComponentData.LogicDataT;
import com.etas.amd620.core.ComponentData.MatrixT;
import com.etas.amd620.core.ComponentData.NoteType;
import com.etas.amd620.core.ComponentData.NotesT;
import com.etas.amd620.core.ComponentData.NumericDataT;
import com.etas.amd620.core.ComponentData.OneDType;
import com.etas.amd620.core.ComponentData.OptionT;
import com.etas.amd620.core.ComponentData.ParameterType;
import com.etas.amd620.core.ComponentData.PointT;
import com.etas.amd620.core.ComponentData.ReferenceDataT;
import com.etas.amd620.core.ComponentData.ScalarTypeT;
import com.etas.amd620.core.ComponentData.SizeT;
import com.etas.amd620.core.ComponentData.TimeStampT;
import com.etas.amd620.core.ComponentData.TwoDType;
import com.etas.amd620.core.ComponentData.ViewType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.Switch;

public class ComponentDataSwitch<T>
extends Switch<T> {
    protected static ComponentDataPackage modelPackage;

    public ComponentDataSwitch() {
        if (modelPackage == null) {
            modelPackage = ComponentDataPackage.eINSTANCE;
        }
    }

    protected boolean isSwitchFor(EPackage ePackage) {
        return ePackage == modelPackage;
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                ArrayT arrayT = (ArrayT)theEObject;
                T result = this.caseArrayT(arrayT);
                if (result == null) {
                    result = this.caseDimensionalDataT(arrayT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ColorT colorT = (ColorT)theEObject;
                T result = this.caseColorT(colorT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ComplexDataT complexDataT = (ComplexDataT)theEObject;
                T result = this.caseComplexDataT(complexDataT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ComponentDataType componentDataType = (ComponentDataType)theEObject;
                T result = this.caseComponentDataType(componentDataType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                DataEntryT dataEntryT = (DataEntryT)theEObject;
                T result = this.caseDataEntryT(dataEntryT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                DataSetT dataSetT = (DataSetT)theEObject;
                T result = this.caseDataSetT(dataSetT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                DataVariantT dataVariantT = (DataVariantT)theEObject;
                T result = this.caseDataVariantT(dataVariantT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                DependencyT dependencyT = (DependencyT)theEObject;
                T result = this.caseDependencyT(dependencyT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                DimensionalDataT dimensionalDataT = (DimensionalDataT)theEObject;
                T result = this.caseDimensionalDataT(dimensionalDataT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                DimensionalTypeT dimensionalTypeT = (DimensionalTypeT)theEObject;
                T result = this.caseDimensionalTypeT(dimensionalTypeT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                DistributionInfoT distributionInfoT = (DistributionInfoT)theEObject;
                T result = this.caseDistributionInfoT(distributionInfoT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                DocumentRoot documentRoot = (DocumentRoot)theEObject;
                T result = this.caseDocumentRoot(documentRoot);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                EnumerationDataT enumerationDataT = (EnumerationDataT)theEObject;
                T result = this.caseEnumerationDataT(enumerationDataT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                FileReferenceT fileReferenceT = (FileReferenceT)theEObject;
                T result = this.caseFileReferenceT(fileReferenceT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                FormattedTextT formattedTextT = (FormattedTextT)theEObject;
                T result = this.caseFormattedTextT(formattedTextT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                GenericDataT genericDataT = (GenericDataT)theEObject;
                T result = this.caseGenericDataT(genericDataT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                IconT iconT = (IconT)theEObject;
                T result = this.caseIconT(iconT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                IntervalT intervalT = (IntervalT)theEObject;
                T result = this.caseIntervalT(intervalT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                ItemRefT itemRefT = (ItemRefT)theEObject;
                T result = this.caseItemRefT(itemRefT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                LocalType localType = (LocalType)theEObject;
                T result = this.caseLocalType(localType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                LogicDataT logicDataT = (LogicDataT)theEObject;
                T result = this.caseLogicDataT(logicDataT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                MatrixT matrixT = (MatrixT)theEObject;
                T result = this.caseMatrixT(matrixT);
                if (result == null) {
                    result = this.caseDimensionalDataT(matrixT);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 22: {
                NotesT notesT = (NotesT)theEObject;
                T result = this.caseNotesT(notesT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 23: {
                NoteType noteType = (NoteType)theEObject;
                T result = this.caseNoteType(noteType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 24: {
                NumericDataT numericDataT = (NumericDataT)theEObject;
                T result = this.caseNumericDataT(numericDataT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 25: {
                OneDType oneDType = (OneDType)theEObject;
                T result = this.caseOneDType(oneDType);
                if (result == null) {
                    result = this.caseDimensionalDataT(oneDType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 26: {
                OptionT optionT = (OptionT)theEObject;
                T result = this.caseOptionT(optionT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 27: {
                ParameterType parameterType = (ParameterType)theEObject;
                T result = this.caseParameterType(parameterType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 28: {
                PointT pointT = (PointT)theEObject;
                T result = this.casePointT(pointT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 29: {
                ReferenceDataT referenceDataT = (ReferenceDataT)theEObject;
                T result = this.caseReferenceDataT(referenceDataT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 30: {
                ScalarTypeT scalarTypeT = (ScalarTypeT)theEObject;
                T result = this.caseScalarTypeT(scalarTypeT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 31: {
                SizeT sizeT = (SizeT)theEObject;
                T result = this.caseSizeT(sizeT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 32: {
                TimeStampT timeStampT = (TimeStampT)theEObject;
                T result = this.caseTimeStampT(timeStampT);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 33: {
                TwoDType twoDType = (TwoDType)theEObject;
                T result = this.caseTwoDType(twoDType);
                if (result == null) {
                    result = this.caseDimensionalDataT(twoDType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 34: {
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

    public T caseArrayT(ArrayT object) {
        return null;
    }

    public T caseColorT(ColorT object) {
        return null;
    }

    public T caseComplexDataT(ComplexDataT object) {
        return null;
    }

    public T caseComponentDataType(ComponentDataType object) {
        return null;
    }

    public T caseDataEntryT(DataEntryT object) {
        return null;
    }

    public T caseDataSetT(DataSetT object) {
        return null;
    }

    public T caseDataVariantT(DataVariantT object) {
        return null;
    }

    public T caseDependencyT(DependencyT object) {
        return null;
    }

    public T caseDimensionalDataT(DimensionalDataT object) {
        return null;
    }

    public T caseDimensionalTypeT(DimensionalTypeT object) {
        return null;
    }

    public T caseDistributionInfoT(DistributionInfoT object) {
        return null;
    }

    public T caseDocumentRoot(DocumentRoot object) {
        return null;
    }

    public T caseEnumerationDataT(EnumerationDataT object) {
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

    public T caseIntervalT(IntervalT object) {
        return null;
    }

    public T caseItemRefT(ItemRefT object) {
        return null;
    }

    public T caseLocalType(LocalType object) {
        return null;
    }

    public T caseLogicDataT(LogicDataT object) {
        return null;
    }

    public T caseMatrixT(MatrixT object) {
        return null;
    }

    public T caseNotesT(NotesT object) {
        return null;
    }

    public T caseNoteType(NoteType object) {
        return null;
    }

    public T caseNumericDataT(NumericDataT object) {
        return null;
    }

    public T caseOneDType(OneDType object) {
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

    public T caseReferenceDataT(ReferenceDataT object) {
        return null;
    }

    public T caseScalarTypeT(ScalarTypeT object) {
        return null;
    }

    public T caseSizeT(SizeT object) {
        return null;
    }

    public T caseTimeStampT(TimeStampT object) {
        return null;
    }

    public T caseTwoDType(TwoDType object) {
        return null;
    }

    public T caseViewType(ViewType object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}


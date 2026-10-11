/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EValidator
 *  org.eclipse.emf.ecore.EValidator$Descriptor
 *  org.eclipse.emf.ecore.EValidator$Registry
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage
 */
package com.etas.amd620.core.Formulas.impl;

import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.impl.ComponentDataPackageImpl;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.impl.ComponentImplementationPackageImpl;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.impl.ComponentMainPackageImpl;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.impl.ComponentProjectPackageImpl;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.impl.ComponentSpecificationPackageImpl;
import com.etas.amd620.core.Formulas.ColorT;
import com.etas.amd620.core.Formulas.DocumentRoot;
import com.etas.amd620.core.Formulas.FileReferenceT;
import com.etas.amd620.core.Formulas.FormattedTextT;
import com.etas.amd620.core.Formulas.FormulaComplexType;
import com.etas.amd620.core.Formulas.FormulasFactory;
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
import com.etas.amd620.core.Formulas.TypeType;
import com.etas.amd620.core.Formulas.ViewType;
import com.etas.amd620.core.Formulas.util.FormulasValidator;
import com.etas.amd620.core.Implementationtypes.ImplementationtypesPackage;
import com.etas.amd620.core.Implementationtypes.impl.ImplementationtypesPackageImpl;
import com.etas.amd620.core.amd620.Amd620Package;
import com.etas.amd620.core.amd620.impl.Amd620PackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.w3._2000._09.xmldsig.XmldsigPackage;
import org.w3._2000._09.xmldsig.impl.XmldsigPackageImpl;

public class FormulasPackageImpl
extends EPackageImpl
implements FormulasPackage {
    private EClass colorTEClass = null;
    private EClass documentRootEClass = null;
    private EClass fileReferenceTEClass = null;
    private EClass formattedTextTEClass = null;
    private EClass formulaComplexTypeEClass = null;
    private EClass formulasTypeEClass = null;
    private EClass genericDataTEClass = null;
    private EClass iconTEClass = null;
    private EClass intervalTEClass = null;
    private EClass itemRefTEClass = null;
    private EClass notesTEClass = null;
    private EClass noteTypeEClass = null;
    private EClass optionTEClass = null;
    private EClass parameterTypeEClass = null;
    private EClass pointTEClass = null;
    private EClass sizeTEClass = null;
    private EClass timeStampTEClass = null;
    private EClass viewTypeEClass = null;
    private EEnum typeTypeEEnum = null;
    private EDataType numberOrFractionEDataType = null;
    private EDataType numberOrFractionMember1EDataType = null;
    private EDataType nzqrEDataType = null;
    private EDataType nzqrMember2EDataType = null;
    private EDataType oidEDataType = null;
    private EDataType typeTypeObjectEDataType = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private FormulasPackageImpl() {
        super("http://www.etas.com/ascet/amd/620/formulas", (EFactory)FormulasFactory.eINSTANCE);
    }

    public static FormulasPackage init() {
        if (isInited) {
            return (FormulasPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/formulas");
        }
        FormulasPackageImpl theFormulasPackage = (FormulasPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://www.etas.com/ascet/amd/620/formulas") instanceof FormulasPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://www.etas.com/ascet/amd/620/formulas") : new FormulasPackageImpl());
        isInited = true;
        XMLTypePackage.eINSTANCE.eClass();
        Amd620PackageImpl theAmd620Package = (Amd620PackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620") instanceof Amd620PackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620") : Amd620Package.eINSTANCE);
        ComponentMainPackageImpl theComponentMainPackage = (ComponentMainPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main") instanceof ComponentMainPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main") : ComponentMainPackage.eINSTANCE);
        ComponentDataPackageImpl theComponentDataPackage = (ComponentDataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data") instanceof ComponentDataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data") : ComponentDataPackage.eINSTANCE);
        ComponentImplementationPackageImpl theComponentImplementationPackage = (ComponentImplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation") instanceof ComponentImplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation") : ComponentImplementationPackage.eINSTANCE);
        ComponentSpecificationPackageImpl theComponentSpecificationPackage = (ComponentSpecificationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification") instanceof ComponentSpecificationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification") : ComponentSpecificationPackage.eINSTANCE);
        ComponentProjectPackageImpl theComponentProjectPackage = (ComponentProjectPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_project") instanceof ComponentProjectPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_project") : ComponentProjectPackage.eINSTANCE);
        ImplementationtypesPackageImpl theImplementationtypesPackage = (ImplementationtypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes") instanceof ImplementationtypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes") : ImplementationtypesPackage.eINSTANCE);
        XmldsigPackageImpl theXmldsigPackage = (XmldsigPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#") instanceof XmldsigPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#") : XmldsigPackage.eINSTANCE);
        theComponentSpecificationPackage.loadPackage();
        theFormulasPackage.createPackageContents();
        theAmd620Package.createPackageContents();
        theComponentMainPackage.createPackageContents();
        theComponentDataPackage.createPackageContents();
        theComponentImplementationPackage.createPackageContents();
        theComponentProjectPackage.createPackageContents();
        theImplementationtypesPackage.createPackageContents();
        theXmldsigPackage.createPackageContents();
        theFormulasPackage.initializePackageContents();
        theAmd620Package.initializePackageContents();
        theComponentMainPackage.initializePackageContents();
        theComponentDataPackage.initializePackageContents();
        theComponentImplementationPackage.initializePackageContents();
        theComponentProjectPackage.initializePackageContents();
        theImplementationtypesPackage.initializePackageContents();
        theXmldsigPackage.initializePackageContents();
        theComponentSpecificationPackage.fixPackageContents();
        EValidator.Registry.INSTANCE.put((Object)theFormulasPackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return FormulasValidator.INSTANCE;
            }
        });
        theFormulasPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://www.etas.com/ascet/amd/620/formulas", (Object)theFormulasPackage);
        return theFormulasPackage;
    }

    @Override
    public EClass getColorT() {
        return this.colorTEClass;
    }

    @Override
    public EAttribute getColorT_Blue() {
        return (EAttribute)this.colorTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getColorT_Green() {
        return (EAttribute)this.colorTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getColorT_Red() {
        return (EAttribute)this.colorTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getDocumentRoot() {
        return this.documentRootEClass;
    }

    @Override
    public EAttribute getDocumentRoot_Mixed() {
        return (EAttribute)this.documentRootEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getDocumentRoot_XMLNSPrefixMap() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getDocumentRoot_XSISchemaLocation() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getDocumentRoot_Formulas() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getFileReferenceT() {
        return this.fileReferenceTEClass;
    }

    @Override
    public EAttribute getFileReferenceT_Value() {
        return (EAttribute)this.fileReferenceTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getFileReferenceT_Checksum() {
        return (EAttribute)this.fileReferenceTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getFileReferenceT_Type() {
        return (EAttribute)this.fileReferenceTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getFormattedTextT() {
        return this.formattedTextTEClass;
    }

    @Override
    public EAttribute getFormattedTextT_Value() {
        return (EAttribute)this.formattedTextTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getFormulaComplexType() {
        return this.formulaComplexTypeEClass;
    }

    @Override
    public EReference getFormulaComplexType_Comment() {
        return (EReference)this.formulaComplexTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getFormulaComplexType_Parameter() {
        return (EReference)this.formulaComplexTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getFormulaComplexType_Name() {
        return (EAttribute)this.formulaComplexTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getFormulaComplexType_Type() {
        return (EAttribute)this.formulaComplexTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getFormulaComplexType_Unit() {
        return (EAttribute)this.formulaComplexTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getFormulasType() {
        return this.formulasTypeEClass;
    }

    @Override
    public EReference getFormulasType_Formula() {
        return (EReference)this.formulasTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getFormulasType_Signature() {
        return (EReference)this.formulasTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getFormulasType_SchemaVersion() {
        return (EAttribute)this.formulasTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getFormulasType_ToolVersion() {
        return (EAttribute)this.formulasTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getGenericDataT() {
        return this.genericDataTEClass;
    }

    @Override
    public EAttribute getGenericDataT_Any() {
        return (EAttribute)this.genericDataTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getGenericDataT_Name() {
        return (EAttribute)this.genericDataTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getIconT() {
        return this.iconTEClass;
    }

    @Override
    public EReference getIconT_IconFile() {
        return (EReference)this.iconTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getIconT_Size() {
        return (EReference)this.iconTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getIconT_IconName() {
        return (EAttribute)this.iconTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getIconT_IconOID() {
        return (EAttribute)this.iconTEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getIntervalT() {
        return this.intervalTEClass;
    }

    @Override
    public EAttribute getIntervalT_Max() {
        return (EAttribute)this.intervalTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getIntervalT_Min() {
        return (EAttribute)this.intervalTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getItemRefT() {
        return this.itemRefTEClass;
    }

    @Override
    public EAttribute getItemRefT_Name() {
        return (EAttribute)this.itemRefTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getItemRefT_OID() {
        return (EAttribute)this.itemRefTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getNotesT() {
        return this.notesTEClass;
    }

    @Override
    public EReference getNotesT_Note() {
        return (EReference)this.notesTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getNoteType() {
        return this.noteTypeEClass;
    }

    @Override
    public EReference getNoteType_Text() {
        return (EReference)this.noteTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getNoteType_View() {
        return (EReference)this.noteTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getNoteType_Name() {
        return (EAttribute)this.noteTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getOptionT() {
        return this.optionTEClass;
    }

    @Override
    public EAttribute getOptionT_Name() {
        return (EAttribute)this.optionTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getOptionT_Type() {
        return (EAttribute)this.optionTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getOptionT_Value() {
        return (EAttribute)this.optionTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getParameterType() {
        return this.parameterTypeEClass;
    }

    @Override
    public EAttribute getParameterType_Value() {
        return (EAttribute)this.parameterTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getPointT() {
        return this.pointTEClass;
    }

    @Override
    public EAttribute getPointT_X() {
        return (EAttribute)this.pointTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getPointT_Y() {
        return (EAttribute)this.pointTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getSizeT() {
        return this.sizeTEClass;
    }

    @Override
    public EAttribute getSizeT_X() {
        return (EAttribute)this.sizeTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getSizeT_Y() {
        return (EAttribute)this.sizeTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getTimeStampT() {
        return this.timeStampTEClass;
    }

    @Override
    public EAttribute getTimeStampT_TimeStampCounter() {
        return (EAttribute)this.timeStampTEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getTimeStampT_TimeStampKey() {
        return (EAttribute)this.timeStampTEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getTimeStampT_TimeStampValue() {
        return (EAttribute)this.timeStampTEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getViewType() {
        return this.viewTypeEClass;
    }

    @Override
    public EAttribute getViewType_Name() {
        return (EAttribute)this.viewTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EEnum getTypeType() {
        return this.typeTypeEEnum;
    }

    @Override
    public EDataType getNumberOrFraction() {
        return this.numberOrFractionEDataType;
    }

    @Override
    public EDataType getNumberOrFractionMember1() {
        return this.numberOrFractionMember1EDataType;
    }

    @Override
    public EDataType getNzqr() {
        return this.nzqrEDataType;
    }

    @Override
    public EDataType getNzqrMember2() {
        return this.nzqrMember2EDataType;
    }

    @Override
    public EDataType getOID() {
        return this.oidEDataType;
    }

    @Override
    public EDataType getTypeTypeObject() {
        return this.typeTypeObjectEDataType;
    }

    @Override
    public FormulasFactory getFormulasFactory() {
        return (FormulasFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.colorTEClass = this.createEClass(0);
        this.createEAttribute(this.colorTEClass, 0);
        this.createEAttribute(this.colorTEClass, 1);
        this.createEAttribute(this.colorTEClass, 2);
        this.documentRootEClass = this.createEClass(1);
        this.createEAttribute(this.documentRootEClass, 0);
        this.createEReference(this.documentRootEClass, 1);
        this.createEReference(this.documentRootEClass, 2);
        this.createEReference(this.documentRootEClass, 3);
        this.fileReferenceTEClass = this.createEClass(2);
        this.createEAttribute(this.fileReferenceTEClass, 0);
        this.createEAttribute(this.fileReferenceTEClass, 1);
        this.createEAttribute(this.fileReferenceTEClass, 2);
        this.formattedTextTEClass = this.createEClass(3);
        this.createEAttribute(this.formattedTextTEClass, 0);
        this.formulaComplexTypeEClass = this.createEClass(4);
        this.createEReference(this.formulaComplexTypeEClass, 0);
        this.createEReference(this.formulaComplexTypeEClass, 1);
        this.createEAttribute(this.formulaComplexTypeEClass, 2);
        this.createEAttribute(this.formulaComplexTypeEClass, 3);
        this.createEAttribute(this.formulaComplexTypeEClass, 4);
        this.formulasTypeEClass = this.createEClass(5);
        this.createEReference(this.formulasTypeEClass, 0);
        this.createEReference(this.formulasTypeEClass, 1);
        this.createEAttribute(this.formulasTypeEClass, 2);
        this.createEAttribute(this.formulasTypeEClass, 3);
        this.genericDataTEClass = this.createEClass(6);
        this.createEAttribute(this.genericDataTEClass, 0);
        this.createEAttribute(this.genericDataTEClass, 1);
        this.iconTEClass = this.createEClass(7);
        this.createEReference(this.iconTEClass, 0);
        this.createEReference(this.iconTEClass, 1);
        this.createEAttribute(this.iconTEClass, 2);
        this.createEAttribute(this.iconTEClass, 3);
        this.intervalTEClass = this.createEClass(8);
        this.createEAttribute(this.intervalTEClass, 0);
        this.createEAttribute(this.intervalTEClass, 1);
        this.itemRefTEClass = this.createEClass(9);
        this.createEAttribute(this.itemRefTEClass, 0);
        this.createEAttribute(this.itemRefTEClass, 1);
        this.notesTEClass = this.createEClass(10);
        this.createEReference(this.notesTEClass, 0);
        this.noteTypeEClass = this.createEClass(11);
        this.createEReference(this.noteTypeEClass, 0);
        this.createEReference(this.noteTypeEClass, 1);
        this.createEAttribute(this.noteTypeEClass, 2);
        this.optionTEClass = this.createEClass(12);
        this.createEAttribute(this.optionTEClass, 0);
        this.createEAttribute(this.optionTEClass, 1);
        this.createEAttribute(this.optionTEClass, 2);
        this.parameterTypeEClass = this.createEClass(13);
        this.createEAttribute(this.parameterTypeEClass, 0);
        this.pointTEClass = this.createEClass(14);
        this.createEAttribute(this.pointTEClass, 0);
        this.createEAttribute(this.pointTEClass, 1);
        this.sizeTEClass = this.createEClass(15);
        this.createEAttribute(this.sizeTEClass, 0);
        this.createEAttribute(this.sizeTEClass, 1);
        this.timeStampTEClass = this.createEClass(16);
        this.createEAttribute(this.timeStampTEClass, 0);
        this.createEAttribute(this.timeStampTEClass, 1);
        this.createEAttribute(this.timeStampTEClass, 2);
        this.viewTypeEClass = this.createEClass(17);
        this.createEAttribute(this.viewTypeEClass, 0);
        this.typeTypeEEnum = this.createEEnum(18);
        this.numberOrFractionEDataType = this.createEDataType(19);
        this.numberOrFractionMember1EDataType = this.createEDataType(20);
        this.nzqrEDataType = this.createEDataType(21);
        this.nzqrMember2EDataType = this.createEDataType(22);
        this.oidEDataType = this.createEDataType(23);
        this.typeTypeObjectEDataType = this.createEDataType(24);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("Formulas");
        this.setNsPrefix("Formulas");
        this.setNsURI("http://www.etas.com/ascet/amd/620/formulas");
        XMLTypePackage theXMLTypePackage = (XMLTypePackage)EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/emf/2003/XMLType");
        XmldsigPackage theXmldsigPackage = (XmldsigPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#");
        this.initEClass(this.colorTEClass, ColorT.class, "ColorT", false, false, true);
        this.initEAttribute(this.getColorT_Blue(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "blue", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getColorT_Green(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "green", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getColorT_Red(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "red", null, 1, 1, ColorT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.documentRootEClass, DocumentRoot.class, "DocumentRoot", false, false, true);
        this.initEAttribute(this.getDocumentRoot_Mixed(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, null, false, false, true, false, false, false, false, true);
        this.initEReference(this.getDocumentRoot_XMLNSPrefixMap(), (EClassifier)this.ecorePackage.getEStringToStringMapEntry(), null, "xMLNSPrefixMap", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDocumentRoot_XSISchemaLocation(), (EClassifier)this.ecorePackage.getEStringToStringMapEntry(), null, "xSISchemaLocation", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDocumentRoot_Formulas(), (EClassifier)this.getFormulasType(), null, "formulas", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEClass(this.fileReferenceTEClass, FileReferenceT.class, "FileReferenceT", false, false, true);
        this.initEAttribute(this.getFileReferenceT_Value(), (EClassifier)theXMLTypePackage.getString(), "value", null, 0, 1, FileReferenceT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFileReferenceT_Checksum(), (EClassifier)theXMLTypePackage.getHexBinary(), "checksum", null, 0, 1, FileReferenceT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFileReferenceT_Type(), (EClassifier)this.getTypeType(), "type", null, 1, 1, FileReferenceT.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.formattedTextTEClass, FormattedTextT.class, "FormattedTextT", false, false, true);
        this.initEAttribute(this.getFormattedTextT_Value(), (EClassifier)theXMLTypePackage.getString(), "value", null, 0, 1, FormattedTextT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.formulaComplexTypeEClass, FormulaComplexType.class, "FormulaComplexType", false, false, true);
        this.initEReference(this.getFormulaComplexType_Comment(), (EClassifier)this.getFormattedTextT(), null, "comment", null, 1, 1, FormulaComplexType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getFormulaComplexType_Parameter(), (EClassifier)this.getParameterType(), null, "parameter", null, 0, -1, FormulaComplexType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getFormulaComplexType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 1, 1, FormulaComplexType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFormulaComplexType_Type(), (EClassifier)theXMLTypePackage.getString(), "type", null, 1, 1, FormulaComplexType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFormulaComplexType_Unit(), (EClassifier)theXMLTypePackage.getString(), "unit", null, 1, 1, FormulaComplexType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.formulasTypeEClass, FormulasType.class, "FormulasType", false, false, true);
        this.initEReference(this.getFormulasType_Formula(), (EClassifier)this.getFormulaComplexType(), null, "formula", null, 0, -1, FormulasType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getFormulasType_Signature(), (EClassifier)theXmldsigPackage.getSignatureType(), null, "signature", null, 0, 1, FormulasType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getFormulasType_SchemaVersion(), (EClassifier)theXMLTypePackage.getString(), "schemaVersion", null, 0, 1, FormulasType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFormulasType_ToolVersion(), (EClassifier)theXMLTypePackage.getString(), "toolVersion", null, 0, 1, FormulasType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.genericDataTEClass, GenericDataT.class, "GenericDataT", false, false, true);
        this.initEAttribute(this.getGenericDataT_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 1, -1, GenericDataT.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getGenericDataT_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 0, 1, GenericDataT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.iconTEClass, IconT.class, "IconT", false, false, true);
        this.initEReference(this.getIconT_IconFile(), (EClassifier)this.getFileReferenceT(), null, "iconFile", null, 0, 1, IconT.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getIconT_Size(), (EClassifier)this.getSizeT(), null, "size", null, 1, 1, IconT.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getIconT_IconName(), (EClassifier)theXMLTypePackage.getString(), "iconName", null, 0, 1, IconT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getIconT_IconOID(), (EClassifier)this.getOID(), "iconOID", null, 0, 1, IconT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.intervalTEClass, IntervalT.class, "IntervalT", false, false, true);
        this.initEAttribute(this.getIntervalT_Max(), (EClassifier)this.getNzqr(), "max", null, 1, 1, IntervalT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getIntervalT_Min(), (EClassifier)this.getNzqr(), "min", null, 1, 1, IntervalT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.itemRefTEClass, ItemRefT.class, "ItemRefT", false, false, true);
        this.initEAttribute(this.getItemRefT_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 1, 1, ItemRefT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getItemRefT_OID(), (EClassifier)this.getOID(), "oID", null, 0, 1, ItemRefT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.notesTEClass, NotesT.class, "NotesT", false, false, true);
        this.initEReference(this.getNotesT_Note(), (EClassifier)this.getNoteType(), null, "note", null, 0, -1, NotesT.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.noteTypeEClass, NoteType.class, "NoteType", false, false, true);
        this.initEReference(this.getNoteType_Text(), (EClassifier)this.getFormattedTextT(), null, "text", null, 0, 1, NoteType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getNoteType_View(), (EClassifier)this.getViewType(), null, "view", null, 0, -1, NoteType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getNoteType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 0, 1, NoteType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.optionTEClass, OptionT.class, "OptionT", false, false, true);
        this.initEAttribute(this.getOptionT_Name(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "name", null, 1, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOptionT_Type(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "type", null, 0, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getOptionT_Value(), (EClassifier)theXMLTypePackage.getAnySimpleType(), "value", null, 1, 1, OptionT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.parameterTypeEClass, ParameterType.class, "ParameterType", false, false, true);
        this.initEAttribute(this.getParameterType_Value(), (EClassifier)this.getNumberOrFraction(), "value", null, 1, 1, ParameterType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.pointTEClass, PointT.class, "PointT", false, false, true);
        this.initEAttribute(this.getPointT_X(), (EClassifier)theXMLTypePackage.getInteger(), "x", null, 1, 1, PointT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getPointT_Y(), (EClassifier)theXMLTypePackage.getInteger(), "y", null, 1, 1, PointT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.sizeTEClass, SizeT.class, "SizeT", false, false, true);
        this.initEAttribute(this.getSizeT_X(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "x", null, 1, 1, SizeT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getSizeT_Y(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "y", null, 1, 1, SizeT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.timeStampTEClass, TimeStampT.class, "TimeStampT", false, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampCounter(), (EClassifier)theXMLTypePackage.getNonNegativeInteger(), "timeStampCounter", null, 0, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampKey(), (EClassifier)theXMLTypePackage.getNMTOKEN(), "timeStampKey", null, 1, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getTimeStampT_TimeStampValue(), (EClassifier)theXMLTypePackage.getDateTime(), "timeStampValue", null, 1, 1, TimeStampT.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.viewTypeEClass, ViewType.class, "ViewType", false, false, true);
        this.initEAttribute(this.getViewType_Name(), (EClassifier)theXMLTypePackage.getString(), "name", null, 1, 1, ViewType.class, false, false, true, false, false, true, false, true);
        this.initEEnum(this.typeTypeEEnum, TypeType.class, "TypeType");
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.ASAM);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.OBJECTCODE);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.COMPONENT);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.CSOURCE);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.DATA);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.EXPERIMENT);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.HEADER);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.IMPLEMENTATION);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.SETTING);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.SPECIFICATION);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.GRAPHIC);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.FORMULA);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.IMPLEMENTATIONTYPE);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.OSLOGIC);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.GENERIC);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.FOLDER);
        this.addEEnumLiteral(this.typeTypeEEnum, TypeType.SIGNAL);
        this.initEDataType(this.numberOrFractionEDataType, Object.class, "NumberOrFraction", true, false);
        this.initEDataType(this.numberOrFractionMember1EDataType, String.class, "NumberOrFractionMember1", true, false);
        this.initEDataType(this.nzqrEDataType, Object.class, "Nzqr", true, false);
        this.initEDataType(this.nzqrMember2EDataType, String.class, "NzqrMember2", true, false);
        this.initEDataType(this.oidEDataType, String.class, "OID", true, false);
        this.initEDataType(this.typeTypeObjectEDataType, TypeType.class, "TypeTypeObject", true, true);
        this.createResource("http://www.etas.com/ascet/amd/620/formulas");
        this.createExtendedMetaDataAnnotations();
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.colorTEClass, source, new String[]{"name", "ColorT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getColorT_Blue(), source, new String[]{"kind", "attribute", "name", "blue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getColorT_Green(), source, new String[]{"kind", "attribute", "name", "green", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getColorT_Red(), source, new String[]{"kind", "attribute", "name", "red", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.documentRootEClass, source, new String[]{"name", "", "kind", "mixed"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_XMLNSPrefixMap(), source, new String[]{"kind", "attribute", "name", "xmlns:prefix"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_XSISchemaLocation(), source, new String[]{"kind", "attribute", "name", "xsi:schemaLocation"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_Formulas(), source, new String[]{"kind", "element", "name", "Formulas", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.fileReferenceTEClass, source, new String[]{"name", "FileReferenceT", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.getFileReferenceT_Value(), source, new String[]{"name", ":0", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.getFileReferenceT_Checksum(), source, new String[]{"kind", "attribute", "name", "checksum", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFileReferenceT_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.formattedTextTEClass, source, new String[]{"name", "FormattedTextT", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.getFormattedTextT_Value(), source, new String[]{"name", ":0", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.formulaComplexTypeEClass, source, new String[]{"name", "FormulaComplexType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getFormulaComplexType_Comment(), source, new String[]{"kind", "element", "name", "Comment", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFormulaComplexType_Parameter(), source, new String[]{"kind", "element", "name", "Parameter", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFormulaComplexType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFormulaComplexType_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFormulaComplexType_Unit(), source, new String[]{"kind", "attribute", "name", "unit", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.formulasTypeEClass, source, new String[]{"name", "Formulas_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getFormulasType_Formula(), source, new String[]{"kind", "element", "name", "Formula", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFormulasType_Signature(), source, new String[]{"kind", "element", "name", "Signature", "namespace", "http://www.w3.org/2000/09/xmldsig#"});
        this.addAnnotation((ENamedElement)this.getFormulasType_SchemaVersion(), source, new String[]{"kind", "attribute", "name", "schemaVersion", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getFormulasType_ToolVersion(), source, new String[]{"kind", "attribute", "name", "toolVersion", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.genericDataTEClass, source, new String[]{"name", "GenericDataT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getGenericDataT_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##any", "name", ":0", "processing", "skip"});
        this.addAnnotation((ENamedElement)this.getGenericDataT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.iconTEClass, source, new String[]{"name", "IconT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getIconT_IconFile(), source, new String[]{"kind", "element", "name", "IconFile", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIconT_Size(), source, new String[]{"kind", "element", "name", "Size", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIconT_IconName(), source, new String[]{"kind", "attribute", "name", "iconName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIconT_IconOID(), source, new String[]{"kind", "attribute", "name", "iconOID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.intervalTEClass, source, new String[]{"name", "IntervalT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getIntervalT_Max(), source, new String[]{"kind", "attribute", "name", "max", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getIntervalT_Min(), source, new String[]{"kind", "attribute", "name", "min", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.itemRefTEClass, source, new String[]{"name", "ItemRefT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getItemRefT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getItemRefT_OID(), source, new String[]{"kind", "attribute", "name", "OID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.notesTEClass, source, new String[]{"name", "NotesT", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getNotesT_Note(), source, new String[]{"kind", "element", "name", "Note", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.noteTypeEClass, source, new String[]{"name", "Note_._type", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getNoteType_Text(), source, new String[]{"kind", "element", "name", "Text", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNoteType_View(), source, new String[]{"kind", "element", "name", "View", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getNoteType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.numberOrFractionEDataType, source, new String[]{"name", "NumberOrFraction", "memberTypes", "http://www.eclipse.org/emf/2003/XMLType#double NumberOrFraction_._member_._1"});
        this.addAnnotation((ENamedElement)this.numberOrFractionMember1EDataType, source, new String[]{"name", "NumberOrFraction_._member_._1", "baseType", "http://www.eclipse.org/emf/2003/XMLType#string", "pattern", "-?\\d*.?\\d*/\\d*\\.?\\d*"});
        this.addAnnotation((ENamedElement)this.nzqrEDataType, source, new String[]{"name", "nzqr", "memberTypes", "http://www.eclipse.org/emf/2003/XMLType#double http://www.eclipse.org/emf/2003/XMLType#int nzqr_._member_._2"});
        this.addAnnotation((ENamedElement)this.nzqrMember2EDataType, source, new String[]{"name", "nzqr_._member_._2", "baseType", "http://www.eclipse.org/emf/2003/XMLType#string", "pattern", "-?\\d*/\\d*"});
        this.addAnnotation((ENamedElement)this.oidEDataType, source, new String[]{"name", "OID", "baseType", "http://www.eclipse.org/emf/2003/XMLType#string", "pattern", "(_040|_07v)\\w{26}|_sm"});
        this.addAnnotation((ENamedElement)this.optionTEClass, source, new String[]{"name", "OptionT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getOptionT_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOptionT_Type(), source, new String[]{"kind", "attribute", "name", "type", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getOptionT_Value(), source, new String[]{"kind", "attribute", "name", "value", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.parameterTypeEClass, source, new String[]{"name", "Parameter_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getParameterType_Value(), source, new String[]{"kind", "attribute", "name", "value", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.pointTEClass, source, new String[]{"name", "PointT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getPointT_X(), source, new String[]{"kind", "attribute", "name", "x", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPointT_Y(), source, new String[]{"kind", "attribute", "name", "y", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.sizeTEClass, source, new String[]{"name", "SizeT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getSizeT_X(), source, new String[]{"kind", "attribute", "name", "x", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getSizeT_Y(), source, new String[]{"kind", "attribute", "name", "y", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.timeStampTEClass, source, new String[]{"name", "TimeStampT", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampCounter(), source, new String[]{"kind", "attribute", "name", "timeStampCounter", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampKey(), source, new String[]{"kind", "attribute", "name", "timeStampKey", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getTimeStampT_TimeStampValue(), source, new String[]{"kind", "attribute", "name", "timeStampValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.typeTypeEEnum, source, new String[]{"name", "type_._type"});
        this.addAnnotation((ENamedElement)this.typeTypeObjectEDataType, source, new String[]{"name", "type_._type:Object", "baseType", "type_._type"});
        this.addAnnotation((ENamedElement)this.viewTypeEClass, source, new String[]{"name", "View_._type", "kind", "empty"});
        this.addAnnotation((ENamedElement)this.getViewType_Name(), source, new String[]{"kind", "attribute", "name", "name", "namespace", "##targetNamespace"});
    }
}


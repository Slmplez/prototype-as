/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.constants;

import autosar40.commonstructure.constants.ApplicationValueSpecification;
import autosar40.commonstructure.constants.ArrayValueSpecification;
import autosar40.commonstructure.constants.ConstantReference;
import autosar40.commonstructure.constants.ConstantSpecification;
import autosar40.commonstructure.constants.ConstantSpecificationMapping;
import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.commonstructure.constants.ConstantsPackage;
import autosar40.commonstructure.constants.NumericalValueSpecification;
import autosar40.commonstructure.constants.RecordValueSpecification;
import autosar40.commonstructure.constants.ReferenceValueSpecification;
import autosar40.commonstructure.constants.TextValueSpecification;
import autosar40.commonstructure.constants.impl.ConstantsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ConstantsFactory
extends EFactory {
    public static final ConstantsFactory eINSTANCE = ConstantsFactoryImpl.init();

    public ApplicationValueSpecification createApplicationValueSpecification();

    public ArrayValueSpecification createArrayValueSpecification();

    public ConstantReference createConstantReference();

    public ConstantSpecification createConstantSpecification();

    public ConstantSpecificationMapping createConstantSpecificationMapping();

    public ConstantSpecificationMappingSet createConstantSpecificationMappingSet();

    public NumericalValueSpecification createNumericalValueSpecification();

    public RecordValueSpecification createRecordValueSpecification();

    public ReferenceValueSpecification createReferenceValueSpecification();

    public TextValueSpecification createTextValueSpecification();

    public ConstantsPackage getConstantsPackage();
}


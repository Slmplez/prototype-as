/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.datatype.constants;

import autosar3x.swcomponent.datatype.constants.ArraySpecification;
import autosar3x.swcomponent.datatype.constants.BooleanLiteral;
import autosar3x.swcomponent.datatype.constants.CharLiteral;
import autosar3x.swcomponent.datatype.constants.ConstantReference;
import autosar3x.swcomponent.datatype.constants.ConstantSpecification;
import autosar3x.swcomponent.datatype.constants.ConstantsPackage;
import autosar3x.swcomponent.datatype.constants.IntegerLiteral;
import autosar3x.swcomponent.datatype.constants.OpaqueLiteral;
import autosar3x.swcomponent.datatype.constants.RealLiteral;
import autosar3x.swcomponent.datatype.constants.RecordSpecification;
import autosar3x.swcomponent.datatype.constants.StringLiteral;
import autosar3x.swcomponent.datatype.constants.impl.ConstantsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ConstantsFactory
extends EFactory {
    public static final ConstantsFactory eINSTANCE = ConstantsFactoryImpl.init();

    public ArraySpecification createArraySpecification();

    public BooleanLiteral createBooleanLiteral();

    public CharLiteral createCharLiteral();

    public ConstantReference createConstantReference();

    public ConstantSpecification createConstantSpecification();

    public IntegerLiteral createIntegerLiteral();

    public OpaqueLiteral createOpaqueLiteral();

    public RealLiteral createRealLiteral();

    public RecordSpecification createRecordSpecification();

    public StringLiteral createStringLiteral();

    public ConstantsPackage getConstantsPackage();
}


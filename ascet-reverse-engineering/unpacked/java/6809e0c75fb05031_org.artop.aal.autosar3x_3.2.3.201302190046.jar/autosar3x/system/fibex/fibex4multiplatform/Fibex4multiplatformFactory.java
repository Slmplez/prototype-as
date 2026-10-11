/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.fibex.fibex4multiplatform;

import autosar3x.system.fibex.fibex4multiplatform.DefaultValueElement;
import autosar3x.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar3x.system.fibex.fibex4multiplatform.FrameMapping;
import autosar3x.system.fibex.fibex4multiplatform.Gateway;
import autosar3x.system.fibex.fibex4multiplatform.IPduMapping;
import autosar3x.system.fibex.fibex4multiplatform.PduMappingDefaultValue;
import autosar3x.system.fibex.fibex4multiplatform.SignalMapping;
import autosar3x.system.fibex.fibex4multiplatform.SourceIPduRef;
import autosar3x.system.fibex.fibex4multiplatform.TargetIPduRef;
import autosar3x.system.fibex.fibex4multiplatform.impl.Fibex4multiplatformFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface Fibex4multiplatformFactory
extends EFactory {
    public static final Fibex4multiplatformFactory eINSTANCE = Fibex4multiplatformFactoryImpl.init();

    public DefaultValueElement createDefaultValueElement();

    public FrameMapping createFrameMapping();

    public Gateway createGateway();

    public SignalMapping createSignalMapping();

    public IPduMapping createIPduMapping();

    public SourceIPduRef createSourceIPduRef();

    public PduMappingDefaultValue createPduMappingDefaultValue();

    public TargetIPduRef createTargetIPduRef();

    public Fibex4multiplatformPackage getFibex4multiplatformPackage();
}


/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.fibex.fibex4multiplatform;

import autosar40.system.fibex.fibex4multiplatform.DefaultValueElement;
import autosar40.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar40.system.fibex.fibex4multiplatform.FrameMapping;
import autosar40.system.fibex.fibex4multiplatform.Gateway;
import autosar40.system.fibex.fibex4multiplatform.IPduMapping;
import autosar40.system.fibex.fibex4multiplatform.ISignalMapping;
import autosar40.system.fibex.fibex4multiplatform.PduMappingDefaultValue;
import autosar40.system.fibex.fibex4multiplatform.TargetIPduRef;
import autosar40.system.fibex.fibex4multiplatform.impl.Fibex4multiplatformFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface Fibex4multiplatformFactory
extends EFactory {
    public static final Fibex4multiplatformFactory eINSTANCE = Fibex4multiplatformFactoryImpl.init();

    public DefaultValueElement createDefaultValueElement();

    public FrameMapping createFrameMapping();

    public Gateway createGateway();

    public ISignalMapping createISignalMapping();

    public IPduMapping createIPduMapping();

    public TargetIPduRef createTargetIPduRef();

    public PduMappingDefaultValue createPduMappingDefaultValue();

    public Fibex4multiplatformPackage getFibex4multiplatformPackage();
}


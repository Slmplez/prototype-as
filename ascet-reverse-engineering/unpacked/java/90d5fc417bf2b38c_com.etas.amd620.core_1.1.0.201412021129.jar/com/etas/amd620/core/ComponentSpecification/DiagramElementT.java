/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ComplexElementT;
import com.etas.amd620.core.ComponentSpecification.ConnectionT;
import com.etas.amd620.core.ComponentSpecification.ControlRteAccessT;
import com.etas.amd620.core.ComponentSpecification.ControlRteInvokeT;
import com.etas.amd620.core.ComponentSpecification.ControlT;
import com.etas.amd620.core.ComponentSpecification.GenericDataT;
import com.etas.amd620.core.ComponentSpecification.HierarchyConnectorType;
import com.etas.amd620.core.ComponentSpecification.HierarchyStateT;
import com.etas.amd620.core.ComponentSpecification.HierarchyT;
import com.etas.amd620.core.ComponentSpecification.ImplementationCastT;
import com.etas.amd620.core.ComponentSpecification.JunctionT;
import com.etas.amd620.core.ComponentSpecification.LiteralT;
import com.etas.amd620.core.ComponentSpecification.OperatorType;
import com.etas.amd620.core.ComponentSpecification.ResourceT;
import com.etas.amd620.core.ComponentSpecification.SimpleElementT;
import com.etas.amd620.core.ComponentSpecification.StateT;
import com.etas.amd620.core.ComponentSpecification.TextT;
import com.etas.amd620.core.ComponentSpecification.TransitionType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface DiagramElementT
extends EObject {
    public EList<GenericDataT> getCustomerData();

    public OperatorType getOperator();

    public void setOperator(OperatorType var1);

    public ControlT getControl();

    public void setControl(ControlT var1);

    public ControlRteAccessT getControlRteAccess();

    public void setControlRteAccess(ControlRteAccessT var1);

    public ControlRteInvokeT getControlRteInvoke();

    public void setControlRteInvoke(ControlRteInvokeT var1);

    public LiteralT getLiteral();

    public void setLiteral(LiteralT var1);

    public SimpleElementT getSimpleElement();

    public void setSimpleElement(SimpleElementT var1);

    public ResourceT getResource();

    public void setResource(ResourceT var1);

    public ImplementationCastT getImplementationCast();

    public void setImplementationCast(ImplementationCastT var1);

    public ComplexElementT getComplexElement();

    public void setComplexElement(ComplexElementT var1);

    public TextT getComment();

    public void setComment(TextT var1);

    public ConnectionT getConnection();

    public void setConnection(ConnectionT var1);

    public HierarchyT getHierarchy();

    public void setHierarchy(HierarchyT var1);

    public HierarchyConnectorType getHierarchyConnector();

    public void setHierarchyConnector(HierarchyConnectorType var1);

    public StateT getState();

    public void setState(StateT var1);

    public HierarchyStateT getHierarchyState();

    public void setHierarchyState(HierarchyStateT var1);

    public JunctionT getJunction();

    public void setJunction(JunctionT var1);

    public TransitionType getTransition();

    public void setTransition(TransitionType var1);

    public String getIgnore();

    public void setIgnore(String var1);

    public void unsetIgnore();

    public boolean isSetIgnore();

    public String getStClass();

    public void setStClass(String var1);
}


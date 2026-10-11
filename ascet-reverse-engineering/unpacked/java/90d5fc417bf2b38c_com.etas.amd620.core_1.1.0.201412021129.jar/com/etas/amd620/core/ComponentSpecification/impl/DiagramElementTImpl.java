/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComplexElementT;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ConnectionT;
import com.etas.amd620.core.ComponentSpecification.ControlRteAccessT;
import com.etas.amd620.core.ComponentSpecification.ControlRteInvokeT;
import com.etas.amd620.core.ComponentSpecification.ControlT;
import com.etas.amd620.core.ComponentSpecification.DiagramElementT;
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
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

public class DiagramElementTImpl
extends MinimalEObjectImpl.Container
implements DiagramElementT {
    protected EList<GenericDataT> customerData;
    protected OperatorType operator;
    protected ControlT control;
    protected ControlRteAccessT controlRteAccess;
    protected ControlRteInvokeT controlRteInvoke;
    protected LiteralT literal;
    protected SimpleElementT simpleElement;
    protected ResourceT resource;
    protected ImplementationCastT implementationCast;
    protected ComplexElementT complexElement;
    protected TextT comment;
    protected ConnectionT connection;
    protected HierarchyT hierarchy;
    protected HierarchyConnectorType hierarchyConnector;
    protected StateT state;
    protected HierarchyStateT hierarchyState;
    protected JunctionT junction;
    protected TransitionType transition;
    protected static final String IGNORE_EDEFAULT = "false";
    protected String ignore = "false";
    protected boolean ignoreESet;
    protected static final String ST_CLASS_EDEFAULT = null;
    protected String stClass = ST_CLASS_EDEFAULT;

    protected DiagramElementTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getDiagramElementT();
    }

    @Override
    public EList<GenericDataT> getCustomerData() {
        if (this.customerData == null) {
            this.customerData = new EObjectContainmentEList(GenericDataT.class, (InternalEObject)this, 0);
        }
        return this.customerData;
    }

    @Override
    public OperatorType getOperator() {
        return this.operator;
    }

    public NotificationChain basicSetOperator(OperatorType newOperator, NotificationChain msgs) {
        OperatorType oldOperator = this.operator;
        this.operator = newOperator;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldOperator, (Object)newOperator);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setOperator(OperatorType newOperator) {
        if (newOperator != this.operator) {
            NotificationChain msgs = null;
            if (this.operator != null) {
                msgs = ((InternalEObject)this.operator).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newOperator != null) {
                msgs = ((InternalEObject)newOperator).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetOperator(newOperator, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newOperator, (Object)newOperator));
        }
    }

    @Override
    public ControlT getControl() {
        return this.control;
    }

    public NotificationChain basicSetControl(ControlT newControl, NotificationChain msgs) {
        ControlT oldControl = this.control;
        this.control = newControl;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldControl, (Object)newControl);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setControl(ControlT newControl) {
        if (newControl != this.control) {
            NotificationChain msgs = null;
            if (this.control != null) {
                msgs = ((InternalEObject)this.control).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newControl != null) {
                msgs = ((InternalEObject)newControl).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetControl(newControl, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newControl, (Object)newControl));
        }
    }

    @Override
    public ControlRteAccessT getControlRteAccess() {
        return this.controlRteAccess;
    }

    public NotificationChain basicSetControlRteAccess(ControlRteAccessT newControlRteAccess, NotificationChain msgs) {
        ControlRteAccessT oldControlRteAccess = this.controlRteAccess;
        this.controlRteAccess = newControlRteAccess;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldControlRteAccess, (Object)newControlRteAccess);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setControlRteAccess(ControlRteAccessT newControlRteAccess) {
        if (newControlRteAccess != this.controlRteAccess) {
            NotificationChain msgs = null;
            if (this.controlRteAccess != null) {
                msgs = ((InternalEObject)this.controlRteAccess).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newControlRteAccess != null) {
                msgs = ((InternalEObject)newControlRteAccess).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetControlRteAccess(newControlRteAccess, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newControlRteAccess, (Object)newControlRteAccess));
        }
    }

    @Override
    public ControlRteInvokeT getControlRteInvoke() {
        return this.controlRteInvoke;
    }

    public NotificationChain basicSetControlRteInvoke(ControlRteInvokeT newControlRteInvoke, NotificationChain msgs) {
        ControlRteInvokeT oldControlRteInvoke = this.controlRteInvoke;
        this.controlRteInvoke = newControlRteInvoke;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldControlRteInvoke, (Object)newControlRteInvoke);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setControlRteInvoke(ControlRteInvokeT newControlRteInvoke) {
        if (newControlRteInvoke != this.controlRteInvoke) {
            NotificationChain msgs = null;
            if (this.controlRteInvoke != null) {
                msgs = ((InternalEObject)this.controlRteInvoke).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newControlRteInvoke != null) {
                msgs = ((InternalEObject)newControlRteInvoke).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetControlRteInvoke(newControlRteInvoke, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newControlRteInvoke, (Object)newControlRteInvoke));
        }
    }

    @Override
    public LiteralT getLiteral() {
        return this.literal;
    }

    public NotificationChain basicSetLiteral(LiteralT newLiteral, NotificationChain msgs) {
        LiteralT oldLiteral = this.literal;
        this.literal = newLiteral;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldLiteral, (Object)newLiteral);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLiteral(LiteralT newLiteral) {
        if (newLiteral != this.literal) {
            NotificationChain msgs = null;
            if (this.literal != null) {
                msgs = ((InternalEObject)this.literal).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newLiteral != null) {
                msgs = ((InternalEObject)newLiteral).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetLiteral(newLiteral, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newLiteral, (Object)newLiteral));
        }
    }

    @Override
    public SimpleElementT getSimpleElement() {
        return this.simpleElement;
    }

    public NotificationChain basicSetSimpleElement(SimpleElementT newSimpleElement, NotificationChain msgs) {
        SimpleElementT oldSimpleElement = this.simpleElement;
        this.simpleElement = newSimpleElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSimpleElement, (Object)newSimpleElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSimpleElement(SimpleElementT newSimpleElement) {
        if (newSimpleElement != this.simpleElement) {
            NotificationChain msgs = null;
            if (this.simpleElement != null) {
                msgs = ((InternalEObject)this.simpleElement).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newSimpleElement != null) {
                msgs = ((InternalEObject)newSimpleElement).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetSimpleElement(newSimpleElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSimpleElement, (Object)newSimpleElement));
        }
    }

    @Override
    public ResourceT getResource() {
        return this.resource;
    }

    public NotificationChain basicSetResource(ResourceT newResource, NotificationChain msgs) {
        ResourceT oldResource = this.resource;
        this.resource = newResource;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldResource, (Object)newResource);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setResource(ResourceT newResource) {
        if (newResource != this.resource) {
            NotificationChain msgs = null;
            if (this.resource != null) {
                msgs = ((InternalEObject)this.resource).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newResource != null) {
                msgs = ((InternalEObject)newResource).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetResource(newResource, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newResource, (Object)newResource));
        }
    }

    @Override
    public ImplementationCastT getImplementationCast() {
        return this.implementationCast;
    }

    public NotificationChain basicSetImplementationCast(ImplementationCastT newImplementationCast, NotificationChain msgs) {
        ImplementationCastT oldImplementationCast = this.implementationCast;
        this.implementationCast = newImplementationCast;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldImplementationCast, (Object)newImplementationCast);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setImplementationCast(ImplementationCastT newImplementationCast) {
        if (newImplementationCast != this.implementationCast) {
            NotificationChain msgs = null;
            if (this.implementationCast != null) {
                msgs = ((InternalEObject)this.implementationCast).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newImplementationCast != null) {
                msgs = ((InternalEObject)newImplementationCast).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetImplementationCast(newImplementationCast, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newImplementationCast, (Object)newImplementationCast));
        }
    }

    @Override
    public ComplexElementT getComplexElement() {
        return this.complexElement;
    }

    public NotificationChain basicSetComplexElement(ComplexElementT newComplexElement, NotificationChain msgs) {
        ComplexElementT oldComplexElement = this.complexElement;
        this.complexElement = newComplexElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldComplexElement, (Object)newComplexElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComplexElement(ComplexElementT newComplexElement) {
        if (newComplexElement != this.complexElement) {
            NotificationChain msgs = null;
            if (this.complexElement != null) {
                msgs = ((InternalEObject)this.complexElement).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newComplexElement != null) {
                msgs = ((InternalEObject)newComplexElement).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetComplexElement(newComplexElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newComplexElement, (Object)newComplexElement));
        }
    }

    @Override
    public TextT getComment() {
        return this.comment;
    }

    public NotificationChain basicSetComment(TextT newComment, NotificationChain msgs) {
        TextT oldComment = this.comment;
        this.comment = newComment;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldComment, (Object)newComment);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComment(TextT newComment) {
        if (newComment != this.comment) {
            NotificationChain msgs = null;
            if (this.comment != null) {
                msgs = ((InternalEObject)this.comment).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newComment != null) {
                msgs = ((InternalEObject)newComment).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetComment(newComment, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newComment, (Object)newComment));
        }
    }

    @Override
    public ConnectionT getConnection() {
        return this.connection;
    }

    public NotificationChain basicSetConnection(ConnectionT newConnection, NotificationChain msgs) {
        ConnectionT oldConnection = this.connection;
        this.connection = newConnection;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldConnection, (Object)newConnection);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setConnection(ConnectionT newConnection) {
        if (newConnection != this.connection) {
            NotificationChain msgs = null;
            if (this.connection != null) {
                msgs = ((InternalEObject)this.connection).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newConnection != null) {
                msgs = ((InternalEObject)newConnection).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetConnection(newConnection, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newConnection, (Object)newConnection));
        }
    }

    @Override
    public HierarchyT getHierarchy() {
        return this.hierarchy;
    }

    public NotificationChain basicSetHierarchy(HierarchyT newHierarchy, NotificationChain msgs) {
        HierarchyT oldHierarchy = this.hierarchy;
        this.hierarchy = newHierarchy;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldHierarchy, (Object)newHierarchy);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setHierarchy(HierarchyT newHierarchy) {
        if (newHierarchy != this.hierarchy) {
            NotificationChain msgs = null;
            if (this.hierarchy != null) {
                msgs = ((InternalEObject)this.hierarchy).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newHierarchy != null) {
                msgs = ((InternalEObject)newHierarchy).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetHierarchy(newHierarchy, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newHierarchy, (Object)newHierarchy));
        }
    }

    @Override
    public HierarchyConnectorType getHierarchyConnector() {
        return this.hierarchyConnector;
    }

    public NotificationChain basicSetHierarchyConnector(HierarchyConnectorType newHierarchyConnector, NotificationChain msgs) {
        HierarchyConnectorType oldHierarchyConnector = this.hierarchyConnector;
        this.hierarchyConnector = newHierarchyConnector;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldHierarchyConnector, (Object)newHierarchyConnector);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setHierarchyConnector(HierarchyConnectorType newHierarchyConnector) {
        if (newHierarchyConnector != this.hierarchyConnector) {
            NotificationChain msgs = null;
            if (this.hierarchyConnector != null) {
                msgs = ((InternalEObject)this.hierarchyConnector).eInverseRemove((InternalEObject)this, -14, null, msgs);
            }
            if (newHierarchyConnector != null) {
                msgs = ((InternalEObject)newHierarchyConnector).eInverseAdd((InternalEObject)this, -14, null, msgs);
            }
            if ((msgs = this.basicSetHierarchyConnector(newHierarchyConnector, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)newHierarchyConnector, (Object)newHierarchyConnector));
        }
    }

    @Override
    public StateT getState() {
        return this.state;
    }

    public NotificationChain basicSetState(StateT newState, NotificationChain msgs) {
        StateT oldState = this.state;
        this.state = newState;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldState, (Object)newState);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setState(StateT newState) {
        if (newState != this.state) {
            NotificationChain msgs = null;
            if (this.state != null) {
                msgs = ((InternalEObject)this.state).eInverseRemove((InternalEObject)this, -15, null, msgs);
            }
            if (newState != null) {
                msgs = ((InternalEObject)newState).eInverseAdd((InternalEObject)this, -15, null, msgs);
            }
            if ((msgs = this.basicSetState(newState, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)newState, (Object)newState));
        }
    }

    @Override
    public HierarchyStateT getHierarchyState() {
        return this.hierarchyState;
    }

    public NotificationChain basicSetHierarchyState(HierarchyStateT newHierarchyState, NotificationChain msgs) {
        HierarchyStateT oldHierarchyState = this.hierarchyState;
        this.hierarchyState = newHierarchyState;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldHierarchyState, (Object)newHierarchyState);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setHierarchyState(HierarchyStateT newHierarchyState) {
        if (newHierarchyState != this.hierarchyState) {
            NotificationChain msgs = null;
            if (this.hierarchyState != null) {
                msgs = ((InternalEObject)this.hierarchyState).eInverseRemove((InternalEObject)this, -16, null, msgs);
            }
            if (newHierarchyState != null) {
                msgs = ((InternalEObject)newHierarchyState).eInverseAdd((InternalEObject)this, -16, null, msgs);
            }
            if ((msgs = this.basicSetHierarchyState(newHierarchyState, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)newHierarchyState, (Object)newHierarchyState));
        }
    }

    @Override
    public JunctionT getJunction() {
        return this.junction;
    }

    public NotificationChain basicSetJunction(JunctionT newJunction, NotificationChain msgs) {
        JunctionT oldJunction = this.junction;
        this.junction = newJunction;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldJunction, (Object)newJunction);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setJunction(JunctionT newJunction) {
        if (newJunction != this.junction) {
            NotificationChain msgs = null;
            if (this.junction != null) {
                msgs = ((InternalEObject)this.junction).eInverseRemove((InternalEObject)this, -17, null, msgs);
            }
            if (newJunction != null) {
                msgs = ((InternalEObject)newJunction).eInverseAdd((InternalEObject)this, -17, null, msgs);
            }
            if ((msgs = this.basicSetJunction(newJunction, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newJunction, (Object)newJunction));
        }
    }

    @Override
    public TransitionType getTransition() {
        return this.transition;
    }

    public NotificationChain basicSetTransition(TransitionType newTransition, NotificationChain msgs) {
        TransitionType oldTransition = this.transition;
        this.transition = newTransition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldTransition, (Object)newTransition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTransition(TransitionType newTransition) {
        if (newTransition != this.transition) {
            NotificationChain msgs = null;
            if (this.transition != null) {
                msgs = ((InternalEObject)this.transition).eInverseRemove((InternalEObject)this, -18, null, msgs);
            }
            if (newTransition != null) {
                msgs = ((InternalEObject)newTransition).eInverseAdd((InternalEObject)this, -18, null, msgs);
            }
            if ((msgs = this.basicSetTransition(newTransition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newTransition, (Object)newTransition));
        }
    }

    @Override
    public String getIgnore() {
        return this.ignore;
    }

    @Override
    public void setIgnore(String newIgnore) {
        String oldIgnore = this.ignore;
        this.ignore = newIgnore;
        boolean oldIgnoreESet = this.ignoreESet;
        this.ignoreESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldIgnore, (Object)this.ignore, !oldIgnoreESet));
        }
    }

    @Override
    public void unsetIgnore() {
        String oldIgnore = this.ignore;
        boolean oldIgnoreESet = this.ignoreESet;
        this.ignore = IGNORE_EDEFAULT;
        this.ignoreESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldIgnore, (Object)IGNORE_EDEFAULT, oldIgnoreESet));
        }
    }

    @Override
    public boolean isSetIgnore() {
        return this.ignoreESet;
    }

    @Override
    public String getStClass() {
        return this.stClass;
    }

    @Override
    public void setStClass(String newStClass) {
        String oldStClass = this.stClass;
        this.stClass = newStClass;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldStClass, (Object)this.stClass));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getCustomerData()).basicRemove((Object)otherEnd, msgs);
            }
            case 1: {
                return this.basicSetOperator(null, msgs);
            }
            case 2: {
                return this.basicSetControl(null, msgs);
            }
            case 3: {
                return this.basicSetControlRteAccess(null, msgs);
            }
            case 4: {
                return this.basicSetControlRteInvoke(null, msgs);
            }
            case 5: {
                return this.basicSetLiteral(null, msgs);
            }
            case 6: {
                return this.basicSetSimpleElement(null, msgs);
            }
            case 7: {
                return this.basicSetResource(null, msgs);
            }
            case 8: {
                return this.basicSetImplementationCast(null, msgs);
            }
            case 9: {
                return this.basicSetComplexElement(null, msgs);
            }
            case 10: {
                return this.basicSetComment(null, msgs);
            }
            case 11: {
                return this.basicSetConnection(null, msgs);
            }
            case 12: {
                return this.basicSetHierarchy(null, msgs);
            }
            case 13: {
                return this.basicSetHierarchyConnector(null, msgs);
            }
            case 14: {
                return this.basicSetState(null, msgs);
            }
            case 15: {
                return this.basicSetHierarchyState(null, msgs);
            }
            case 16: {
                return this.basicSetJunction(null, msgs);
            }
            case 17: {
                return this.basicSetTransition(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getCustomerData();
            }
            case 1: {
                return this.getOperator();
            }
            case 2: {
                return this.getControl();
            }
            case 3: {
                return this.getControlRteAccess();
            }
            case 4: {
                return this.getControlRteInvoke();
            }
            case 5: {
                return this.getLiteral();
            }
            case 6: {
                return this.getSimpleElement();
            }
            case 7: {
                return this.getResource();
            }
            case 8: {
                return this.getImplementationCast();
            }
            case 9: {
                return this.getComplexElement();
            }
            case 10: {
                return this.getComment();
            }
            case 11: {
                return this.getConnection();
            }
            case 12: {
                return this.getHierarchy();
            }
            case 13: {
                return this.getHierarchyConnector();
            }
            case 14: {
                return this.getState();
            }
            case 15: {
                return this.getHierarchyState();
            }
            case 16: {
                return this.getJunction();
            }
            case 17: {
                return this.getTransition();
            }
            case 18: {
                return this.getIgnore();
            }
            case 19: {
                return this.getStClass();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getCustomerData().clear();
                this.getCustomerData().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setOperator((OperatorType)newValue);
                return;
            }
            case 2: {
                this.setControl((ControlT)newValue);
                return;
            }
            case 3: {
                this.setControlRteAccess((ControlRteAccessT)newValue);
                return;
            }
            case 4: {
                this.setControlRteInvoke((ControlRteInvokeT)newValue);
                return;
            }
            case 5: {
                this.setLiteral((LiteralT)newValue);
                return;
            }
            case 6: {
                this.setSimpleElement((SimpleElementT)newValue);
                return;
            }
            case 7: {
                this.setResource((ResourceT)newValue);
                return;
            }
            case 8: {
                this.setImplementationCast((ImplementationCastT)newValue);
                return;
            }
            case 9: {
                this.setComplexElement((ComplexElementT)newValue);
                return;
            }
            case 10: {
                this.setComment((TextT)newValue);
                return;
            }
            case 11: {
                this.setConnection((ConnectionT)newValue);
                return;
            }
            case 12: {
                this.setHierarchy((HierarchyT)newValue);
                return;
            }
            case 13: {
                this.setHierarchyConnector((HierarchyConnectorType)newValue);
                return;
            }
            case 14: {
                this.setState((StateT)newValue);
                return;
            }
            case 15: {
                this.setHierarchyState((HierarchyStateT)newValue);
                return;
            }
            case 16: {
                this.setJunction((JunctionT)newValue);
                return;
            }
            case 17: {
                this.setTransition((TransitionType)newValue);
                return;
            }
            case 18: {
                this.setIgnore((String)newValue);
                return;
            }
            case 19: {
                this.setStClass((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getCustomerData().clear();
                return;
            }
            case 1: {
                this.setOperator(null);
                return;
            }
            case 2: {
                this.setControl(null);
                return;
            }
            case 3: {
                this.setControlRteAccess(null);
                return;
            }
            case 4: {
                this.setControlRteInvoke(null);
                return;
            }
            case 5: {
                this.setLiteral(null);
                return;
            }
            case 6: {
                this.setSimpleElement(null);
                return;
            }
            case 7: {
                this.setResource(null);
                return;
            }
            case 8: {
                this.setImplementationCast(null);
                return;
            }
            case 9: {
                this.setComplexElement(null);
                return;
            }
            case 10: {
                this.setComment(null);
                return;
            }
            case 11: {
                this.setConnection(null);
                return;
            }
            case 12: {
                this.setHierarchy(null);
                return;
            }
            case 13: {
                this.setHierarchyConnector(null);
                return;
            }
            case 14: {
                this.setState(null);
                return;
            }
            case 15: {
                this.setHierarchyState(null);
                return;
            }
            case 16: {
                this.setJunction(null);
                return;
            }
            case 17: {
                this.setTransition(null);
                return;
            }
            case 18: {
                this.unsetIgnore();
                return;
            }
            case 19: {
                this.setStClass(ST_CLASS_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.customerData != null && !this.customerData.isEmpty();
            }
            case 1: {
                return this.operator != null;
            }
            case 2: {
                return this.control != null;
            }
            case 3: {
                return this.controlRteAccess != null;
            }
            case 4: {
                return this.controlRteInvoke != null;
            }
            case 5: {
                return this.literal != null;
            }
            case 6: {
                return this.simpleElement != null;
            }
            case 7: {
                return this.resource != null;
            }
            case 8: {
                return this.implementationCast != null;
            }
            case 9: {
                return this.complexElement != null;
            }
            case 10: {
                return this.comment != null;
            }
            case 11: {
                return this.connection != null;
            }
            case 12: {
                return this.hierarchy != null;
            }
            case 13: {
                return this.hierarchyConnector != null;
            }
            case 14: {
                return this.state != null;
            }
            case 15: {
                return this.hierarchyState != null;
            }
            case 16: {
                return this.junction != null;
            }
            case 17: {
                return this.transition != null;
            }
            case 18: {
                return this.isSetIgnore();
            }
            case 19: {
                return ST_CLASS_EDEFAULT == null ? this.stClass != null : !ST_CLASS_EDEFAULT.equals(this.stClass);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (ignore: ");
        if (this.ignoreESet) {
            result.append(this.ignore);
        } else {
            result.append("<unset>");
        }
        result.append(", stClass: ");
        result.append(this.stClass);
        result.append(')');
        return result.toString();
    }
}


/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.sphinx.platform.util.RadixConverter
 */
package autosar40.commonstructure.datadefproperties.impl;

import autosar40.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar40.commonstructure.basetypes.SwBaseType;
import autosar40.commonstructure.calibrationparameter.SwCalprmAxisSet;
import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar40.commonstructure.datadefproperties.SwBitRepresentation;
import autosar40.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsContent;
import autosar40.commonstructure.datadefproperties.SwDataDependency;
import autosar40.commonstructure.datadefproperties.SwImplPolicyEnum;
import autosar40.commonstructure.datadefproperties.SwPointerTargetProps;
import autosar40.commonstructure.datadefproperties.SwTextProps;
import autosar40.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar40.commonstructure.globalconstraints.DataConstr;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.swcomponent.datatype.computationmethod.CompuMethod;
import autosar40.swcomponent.datatype.datatypes.ApplicationPrimitiveDataType;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayout;
import autosar40.swcomponent.datatype.units.Unit;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.sphinx.platform.util.RadixConverter;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class SwDataDefPropsContentImpl
extends ARObjectImpl
implements SwDataDefPropsContent,
IReferringClass {
    protected EList<Annotation> annotations;
    protected SwAddrMethod swAddrMethod;
    protected static final String SW_ALIGNMENT_EDEFAULT = "";
    protected String swAlignment = "";
    protected boolean swAlignmentESet;
    protected SwBaseType baseType;
    protected SwBitRepresentation swBitRepresentation;
    protected static final SwCalibrationAccessEnum SW_CALIBRATION_ACCESS_EDEFAULT = SwCalibrationAccessEnum.READ_ONLY;
    protected SwCalibrationAccessEnum swCalibrationAccess = SW_CALIBRATION_ACCESS_EDEFAULT;
    protected boolean swCalibrationAccessESet;
    protected NumericalValueVariationPoint swValueBlockSize;
    protected SwCalprmAxisSet swCalprmAxisSet;
    protected SwTextProps swTextProps;
    protected EList<SwVariableRefProxy> swComparisonVariables;
    protected CompuMethod compuMethod;
    protected DataConstr dataConstr;
    protected SwDataDependency swDataDependency;
    protected static final String DISPLAY_FORMAT_EDEFAULT = "";
    protected String displayFormat = "";
    protected boolean displayFormatESet;
    protected ImplementationDataType implementationDataType;
    protected SwVariableRefProxy swHostVariable;
    protected static final SwImplPolicyEnum SW_IMPL_POLICY_EDEFAULT = SwImplPolicyEnum.CONST;
    protected SwImplPolicyEnum swImplPolicy = SW_IMPL_POLICY_EDEFAULT;
    protected boolean swImplPolicyESet;
    protected static final String ADDITIONAL_NATIVE_TYPE_QUALIFIER_EDEFAULT = "";
    protected String additionalNativeTypeQualifier = "";
    protected boolean additionalNativeTypeQualifierESet;
    protected static final String SW_INTENDED_RESOLUTION_EDEFAULT = "";
    protected String swIntendedResolution = "";
    protected boolean swIntendedResolutionESet;
    protected static final String SW_INTERPOLATION_METHOD_EDEFAULT = "";
    protected String swInterpolationMethod = "";
    protected boolean swInterpolationMethodESet;
    protected ValueSpecification invalidValue;
    protected static final String MC_FUNCTION_EDEFAULT = "";
    protected String mcFunction = "";
    protected boolean mcFunctionESet;
    protected static final Boolean SW_IS_VIRTUAL_EDEFAULT = Boolean.FALSE;
    protected Boolean swIsVirtual = SW_IS_VIRTUAL_EDEFAULT;
    protected boolean swIsVirtualESet;
    protected SwPointerTargetProps swPointerTargetProps;
    protected SwRecordLayout swRecordLayout;
    protected MultidimensionalTime swRefreshTiming;
    protected Unit unit;
    protected ApplicationPrimitiveDataType valueAxisDataType;

    protected SwDataDefPropsContentImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.SW_DATA_DEF_PROPS_CONTENT;
    }

    @Override
    public EList<Annotation> getAnnotations() {
        if (this.annotations == null) {
            this.annotations = new EObjectContainmentEList(Annotation.class, (InternalEObject)this, 4);
        }
        return this.annotations;
    }

    @Override
    public SwAddrMethod getSwAddrMethod() {
        if (this.swAddrMethod != null && this.swAddrMethod.eIsProxy()) {
            InternalEObject oldSwAddrMethod = (InternalEObject)this.swAddrMethod;
            this.swAddrMethod = (SwAddrMethod)this.eResolveProxy(oldSwAddrMethod);
            if (this.swAddrMethod != oldSwAddrMethod && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldSwAddrMethod, (Object)this.swAddrMethod));
            }
        }
        return this.swAddrMethod;
    }

    public SwAddrMethod basicGetSwAddrMethod() {
        return this.swAddrMethod;
    }

    @Override
    public void setSwAddrMethod(SwAddrMethod newSwAddrMethod) {
        SwAddrMethod oldSwAddrMethod = this.swAddrMethod;
        this.swAddrMethod = newSwAddrMethod;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwAddrMethod, (Object)this.swAddrMethod));
        }
    }

    @Override
    public String getSwAlignment() {
        return this.swAlignment;
    }

    @Override
    public void setSwAlignment(String newSwAlignment) {
        String oldSwAlignment = this.swAlignment;
        this.swAlignment = newSwAlignment;
        boolean oldSwAlignmentESet = this.swAlignmentESet;
        this.swAlignmentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwAlignment, (Object)this.swAlignment, !oldSwAlignmentESet));
        }
    }

    @Override
    public void unsetSwAlignment() {
        String oldSwAlignment = this.swAlignment;
        boolean oldSwAlignmentESet = this.swAlignmentESet;
        this.swAlignment = "";
        this.swAlignmentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSwAlignment, (Object)"", oldSwAlignmentESet));
        }
    }

    @Override
    public boolean isSetSwAlignment() {
        return this.swAlignmentESet;
    }

    @Override
    public SwBaseType getBaseType() {
        if (this.baseType != null && this.baseType.eIsProxy()) {
            InternalEObject oldBaseType = (InternalEObject)this.baseType;
            this.baseType = (SwBaseType)this.eResolveProxy(oldBaseType);
            if (this.baseType != oldBaseType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldBaseType, (Object)this.baseType));
            }
        }
        return this.baseType;
    }

    public SwBaseType basicGetBaseType() {
        return this.baseType;
    }

    @Override
    public void setBaseType(SwBaseType newBaseType) {
        SwBaseType oldBaseType = this.baseType;
        this.baseType = newBaseType;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldBaseType, (Object)this.baseType));
        }
    }

    @Override
    public SwBitRepresentation getSwBitRepresentation() {
        return this.swBitRepresentation;
    }

    public NotificationChain basicSetSwBitRepresentation(SwBitRepresentation newSwBitRepresentation, NotificationChain msgs) {
        SwBitRepresentation oldSwBitRepresentation = this.swBitRepresentation;
        this.swBitRepresentation = newSwBitRepresentation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSwBitRepresentation, (Object)newSwBitRepresentation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwBitRepresentation(SwBitRepresentation newSwBitRepresentation) {
        if (newSwBitRepresentation != this.swBitRepresentation) {
            NotificationChain msgs = null;
            if (this.swBitRepresentation != null) {
                msgs = ((InternalEObject)this.swBitRepresentation).eInverseRemove((InternalEObject)this, 4, SwBitRepresentation.class, msgs);
            }
            if (newSwBitRepresentation != null) {
                msgs = ((InternalEObject)newSwBitRepresentation).eInverseAdd((InternalEObject)this, 4, SwBitRepresentation.class, msgs);
            }
            if ((msgs = this.basicSetSwBitRepresentation(newSwBitRepresentation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newSwBitRepresentation, (Object)newSwBitRepresentation));
        }
    }

    @Override
    public SwCalibrationAccessEnum getSwCalibrationAccess() {
        return this.swCalibrationAccess;
    }

    @Override
    public void setSwCalibrationAccess(SwCalibrationAccessEnum newSwCalibrationAccess) {
        SwCalibrationAccessEnum oldSwCalibrationAccess = this.swCalibrationAccess;
        this.swCalibrationAccess = newSwCalibrationAccess == null ? SW_CALIBRATION_ACCESS_EDEFAULT : newSwCalibrationAccess;
        boolean oldSwCalibrationAccessESet = this.swCalibrationAccessESet;
        this.swCalibrationAccessESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSwCalibrationAccess, (Object)this.swCalibrationAccess, !oldSwCalibrationAccessESet));
        }
    }

    @Override
    public void unsetSwCalibrationAccess() {
        SwCalibrationAccessEnum oldSwCalibrationAccess = this.swCalibrationAccess;
        boolean oldSwCalibrationAccessESet = this.swCalibrationAccessESet;
        this.swCalibrationAccess = SW_CALIBRATION_ACCESS_EDEFAULT;
        this.swCalibrationAccessESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldSwCalibrationAccess, (Object)SW_CALIBRATION_ACCESS_EDEFAULT, oldSwCalibrationAccessESet));
        }
    }

    @Override
    public boolean isSetSwCalibrationAccess() {
        return this.swCalibrationAccessESet;
    }

    @Override
    public NumericalValueVariationPoint getSwValueBlockSize() {
        return this.swValueBlockSize;
    }

    public NotificationChain basicSetSwValueBlockSize(NumericalValueVariationPoint newSwValueBlockSize, NotificationChain msgs) {
        NumericalValueVariationPoint oldSwValueBlockSize = this.swValueBlockSize;
        this.swValueBlockSize = newSwValueBlockSize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldSwValueBlockSize, (Object)newSwValueBlockSize);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwValueBlockSize(NumericalValueVariationPoint newSwValueBlockSize) {
        if (newSwValueBlockSize != this.swValueBlockSize) {
            NotificationChain msgs = null;
            if (this.swValueBlockSize != null) {
                msgs = ((InternalEObject)this.swValueBlockSize).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newSwValueBlockSize != null) {
                msgs = ((InternalEObject)newSwValueBlockSize).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetSwValueBlockSize(newSwValueBlockSize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newSwValueBlockSize, (Object)newSwValueBlockSize));
        }
    }

    @Override
    public SwCalprmAxisSet getSwCalprmAxisSet() {
        return this.swCalprmAxisSet;
    }

    public NotificationChain basicSetSwCalprmAxisSet(SwCalprmAxisSet newSwCalprmAxisSet, NotificationChain msgs) {
        SwCalprmAxisSet oldSwCalprmAxisSet = this.swCalprmAxisSet;
        this.swCalprmAxisSet = newSwCalprmAxisSet;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldSwCalprmAxisSet, (Object)newSwCalprmAxisSet);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwCalprmAxisSet(SwCalprmAxisSet newSwCalprmAxisSet) {
        if (newSwCalprmAxisSet != this.swCalprmAxisSet) {
            NotificationChain msgs = null;
            if (this.swCalprmAxisSet != null) {
                msgs = ((InternalEObject)this.swCalprmAxisSet).eInverseRemove((InternalEObject)this, 4, SwCalprmAxisSet.class, msgs);
            }
            if (newSwCalprmAxisSet != null) {
                msgs = ((InternalEObject)newSwCalprmAxisSet).eInverseAdd((InternalEObject)this, 4, SwCalprmAxisSet.class, msgs);
            }
            if ((msgs = this.basicSetSwCalprmAxisSet(newSwCalprmAxisSet, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newSwCalprmAxisSet, (Object)newSwCalprmAxisSet));
        }
    }

    @Override
    public SwTextProps getSwTextProps() {
        return this.swTextProps;
    }

    public NotificationChain basicSetSwTextProps(SwTextProps newSwTextProps, NotificationChain msgs) {
        SwTextProps oldSwTextProps = this.swTextProps;
        this.swTextProps = newSwTextProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldSwTextProps, (Object)newSwTextProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwTextProps(SwTextProps newSwTextProps) {
        if (newSwTextProps != this.swTextProps) {
            NotificationChain msgs = null;
            if (this.swTextProps != null) {
                msgs = ((InternalEObject)this.swTextProps).eInverseRemove((InternalEObject)this, 4, SwTextProps.class, msgs);
            }
            if (newSwTextProps != null) {
                msgs = ((InternalEObject)newSwTextProps).eInverseAdd((InternalEObject)this, 4, SwTextProps.class, msgs);
            }
            if ((msgs = this.basicSetSwTextProps(newSwTextProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newSwTextProps, (Object)newSwTextProps));
        }
    }

    @Override
    public EList<SwVariableRefProxy> getSwComparisonVariables() {
        if (this.swComparisonVariables == null) {
            this.swComparisonVariables = new EObjectContainmentEList(SwVariableRefProxy.class, (InternalEObject)this, 13);
        }
        return this.swComparisonVariables;
    }

    @Override
    public CompuMethod getCompuMethod() {
        if (this.compuMethod != null && this.compuMethod.eIsProxy()) {
            InternalEObject oldCompuMethod = (InternalEObject)this.compuMethod;
            this.compuMethod = (CompuMethod)this.eResolveProxy(oldCompuMethod);
            if (this.compuMethod != oldCompuMethod && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 14, (Object)oldCompuMethod, (Object)this.compuMethod));
            }
        }
        return this.compuMethod;
    }

    public CompuMethod basicGetCompuMethod() {
        return this.compuMethod;
    }

    @Override
    public void setCompuMethod(CompuMethod newCompuMethod) {
        CompuMethod oldCompuMethod = this.compuMethod;
        this.compuMethod = newCompuMethod;
        AutosarObjectUtil.setDest((EObject)this, (int)14, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldCompuMethod, (Object)this.compuMethod));
        }
    }

    @Override
    public DataConstr getDataConstr() {
        if (this.dataConstr != null && this.dataConstr.eIsProxy()) {
            InternalEObject oldDataConstr = (InternalEObject)this.dataConstr;
            this.dataConstr = (DataConstr)this.eResolveProxy(oldDataConstr);
            if (this.dataConstr != oldDataConstr && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 15, (Object)oldDataConstr, (Object)this.dataConstr));
            }
        }
        return this.dataConstr;
    }

    public DataConstr basicGetDataConstr() {
        return this.dataConstr;
    }

    @Override
    public void setDataConstr(DataConstr newDataConstr) {
        DataConstr oldDataConstr = this.dataConstr;
        this.dataConstr = newDataConstr;
        AutosarObjectUtil.setDest((EObject)this, (int)15, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldDataConstr, (Object)this.dataConstr));
        }
    }

    @Override
    public SwDataDependency getSwDataDependency() {
        return this.swDataDependency;
    }

    public NotificationChain basicSetSwDataDependency(SwDataDependency newSwDataDependency, NotificationChain msgs) {
        SwDataDependency oldSwDataDependency = this.swDataDependency;
        this.swDataDependency = newSwDataDependency;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldSwDataDependency, (Object)newSwDataDependency);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwDataDependency(SwDataDependency newSwDataDependency) {
        if (newSwDataDependency != this.swDataDependency) {
            NotificationChain msgs = null;
            if (this.swDataDependency != null) {
                msgs = ((InternalEObject)this.swDataDependency).eInverseRemove((InternalEObject)this, 4, SwDataDependency.class, msgs);
            }
            if (newSwDataDependency != null) {
                msgs = ((InternalEObject)newSwDataDependency).eInverseAdd((InternalEObject)this, 4, SwDataDependency.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDependency(newSwDataDependency, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newSwDataDependency, (Object)newSwDataDependency));
        }
    }

    @Override
    public String getDisplayFormat() {
        return this.displayFormat;
    }

    @Override
    public void setDisplayFormat(String newDisplayFormat) {
        String oldDisplayFormat = this.displayFormat;
        this.displayFormat = newDisplayFormat;
        boolean oldDisplayFormatESet = this.displayFormatESet;
        this.displayFormatESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldDisplayFormat, (Object)this.displayFormat, !oldDisplayFormatESet));
        }
    }

    @Override
    public void unsetDisplayFormat() {
        String oldDisplayFormat = this.displayFormat;
        boolean oldDisplayFormatESet = this.displayFormatESet;
        this.displayFormat = "";
        this.displayFormatESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldDisplayFormat, (Object)"", oldDisplayFormatESet));
        }
    }

    @Override
    public boolean isSetDisplayFormat() {
        return this.displayFormatESet;
    }

    @Override
    public ImplementationDataType getImplementationDataType() {
        if (this.implementationDataType != null && this.implementationDataType.eIsProxy()) {
            InternalEObject oldImplementationDataType = (InternalEObject)this.implementationDataType;
            this.implementationDataType = (ImplementationDataType)this.eResolveProxy(oldImplementationDataType);
            if (this.implementationDataType != oldImplementationDataType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldImplementationDataType, (Object)this.implementationDataType));
            }
        }
        return this.implementationDataType;
    }

    public ImplementationDataType basicGetImplementationDataType() {
        return this.implementationDataType;
    }

    @Override
    public void setImplementationDataType(ImplementationDataType newImplementationDataType) {
        ImplementationDataType oldImplementationDataType = this.implementationDataType;
        this.implementationDataType = newImplementationDataType;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldImplementationDataType, (Object)this.implementationDataType));
        }
    }

    @Override
    public SwVariableRefProxy getSwHostVariable() {
        return this.swHostVariable;
    }

    public NotificationChain basicSetSwHostVariable(SwVariableRefProxy newSwHostVariable, NotificationChain msgs) {
        SwVariableRefProxy oldSwHostVariable = this.swHostVariable;
        this.swHostVariable = newSwHostVariable;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldSwHostVariable, (Object)newSwHostVariable);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwHostVariable(SwVariableRefProxy newSwHostVariable) {
        if (newSwHostVariable != this.swHostVariable) {
            NotificationChain msgs = null;
            if (this.swHostVariable != null) {
                msgs = ((InternalEObject)this.swHostVariable).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newSwHostVariable != null) {
                msgs = ((InternalEObject)newSwHostVariable).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetSwHostVariable(newSwHostVariable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newSwHostVariable, (Object)newSwHostVariable));
        }
    }

    @Override
    public SwImplPolicyEnum getSwImplPolicy() {
        return this.swImplPolicy;
    }

    @Override
    public void setSwImplPolicy(SwImplPolicyEnum newSwImplPolicy) {
        SwImplPolicyEnum oldSwImplPolicy = this.swImplPolicy;
        this.swImplPolicy = newSwImplPolicy == null ? SW_IMPL_POLICY_EDEFAULT : newSwImplPolicy;
        boolean oldSwImplPolicyESet = this.swImplPolicyESet;
        this.swImplPolicyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldSwImplPolicy, (Object)this.swImplPolicy, !oldSwImplPolicyESet));
        }
    }

    @Override
    public void unsetSwImplPolicy() {
        SwImplPolicyEnum oldSwImplPolicy = this.swImplPolicy;
        boolean oldSwImplPolicyESet = this.swImplPolicyESet;
        this.swImplPolicy = SW_IMPL_POLICY_EDEFAULT;
        this.swImplPolicyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldSwImplPolicy, (Object)SW_IMPL_POLICY_EDEFAULT, oldSwImplPolicyESet));
        }
    }

    @Override
    public boolean isSetSwImplPolicy() {
        return this.swImplPolicyESet;
    }

    @Override
    public String getAdditionalNativeTypeQualifier() {
        return this.additionalNativeTypeQualifier;
    }

    @Override
    public void setAdditionalNativeTypeQualifier(String newAdditionalNativeTypeQualifier) {
        String oldAdditionalNativeTypeQualifier = this.additionalNativeTypeQualifier;
        this.additionalNativeTypeQualifier = newAdditionalNativeTypeQualifier;
        boolean oldAdditionalNativeTypeQualifierESet = this.additionalNativeTypeQualifierESet;
        this.additionalNativeTypeQualifierESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldAdditionalNativeTypeQualifier, (Object)this.additionalNativeTypeQualifier, !oldAdditionalNativeTypeQualifierESet));
        }
    }

    @Override
    public void unsetAdditionalNativeTypeQualifier() {
        String oldAdditionalNativeTypeQualifier = this.additionalNativeTypeQualifier;
        boolean oldAdditionalNativeTypeQualifierESet = this.additionalNativeTypeQualifierESet;
        this.additionalNativeTypeQualifier = "";
        this.additionalNativeTypeQualifierESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldAdditionalNativeTypeQualifier, (Object)"", oldAdditionalNativeTypeQualifierESet));
        }
    }

    @Override
    public boolean isSetAdditionalNativeTypeQualifier() {
        return this.additionalNativeTypeQualifierESet;
    }

    @Override
    public String getSwIntendedResolution() {
        return this.swIntendedResolution;
    }

    @Override
    public void setSwIntendedResolution(String newSwIntendedResolution) {
        String oldSwIntendedResolution = this.swIntendedResolution;
        this.swIntendedResolution = newSwIntendedResolution;
        boolean oldSwIntendedResolutionESet = this.swIntendedResolutionESet;
        this.swIntendedResolutionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldSwIntendedResolution, (Object)this.swIntendedResolution, !oldSwIntendedResolutionESet));
        }
    }

    @Override
    public void unsetSwIntendedResolution() {
        String oldSwIntendedResolution = this.swIntendedResolution;
        boolean oldSwIntendedResolutionESet = this.swIntendedResolutionESet;
        this.swIntendedResolution = "";
        this.swIntendedResolutionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldSwIntendedResolution, (Object)"", oldSwIntendedResolutionESet));
        }
    }

    @Override
    public boolean isSetSwIntendedResolution() {
        return this.swIntendedResolutionESet;
    }

    @Override
    public String getSwInterpolationMethod() {
        return this.swInterpolationMethod;
    }

    @Override
    public void setSwInterpolationMethod(String newSwInterpolationMethod) {
        String oldSwInterpolationMethod = this.swInterpolationMethod;
        this.swInterpolationMethod = newSwInterpolationMethod;
        boolean oldSwInterpolationMethodESet = this.swInterpolationMethodESet;
        this.swInterpolationMethodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldSwInterpolationMethod, (Object)this.swInterpolationMethod, !oldSwInterpolationMethodESet));
        }
    }

    @Override
    public void unsetSwInterpolationMethod() {
        String oldSwInterpolationMethod = this.swInterpolationMethod;
        boolean oldSwInterpolationMethodESet = this.swInterpolationMethodESet;
        this.swInterpolationMethod = "";
        this.swInterpolationMethodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldSwInterpolationMethod, (Object)"", oldSwInterpolationMethodESet));
        }
    }

    @Override
    public boolean isSetSwInterpolationMethod() {
        return this.swInterpolationMethodESet;
    }

    @Override
    public ValueSpecification getInvalidValue() {
        return this.invalidValue;
    }

    public NotificationChain basicSetInvalidValue(ValueSpecification newInvalidValue, NotificationChain msgs) {
        ValueSpecification oldInvalidValue = this.invalidValue;
        this.invalidValue = newInvalidValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldInvalidValue, (Object)newInvalidValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInvalidValue(ValueSpecification newInvalidValue) {
        if (newInvalidValue != this.invalidValue) {
            NotificationChain msgs = null;
            if (this.invalidValue != null) {
                msgs = ((InternalEObject)this.invalidValue).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newInvalidValue != null) {
                msgs = ((InternalEObject)newInvalidValue).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetInvalidValue(newInvalidValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newInvalidValue, (Object)newInvalidValue));
        }
    }

    @Override
    public String getMcFunction() {
        return this.mcFunction;
    }

    @Override
    public void setMcFunction(String newMcFunction) {
        String oldMcFunction = this.mcFunction;
        this.mcFunction = newMcFunction;
        boolean oldMcFunctionESet = this.mcFunctionESet;
        this.mcFunctionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldMcFunction, (Object)this.mcFunction, !oldMcFunctionESet));
        }
    }

    @Override
    public void unsetMcFunction() {
        String oldMcFunction = this.mcFunction;
        boolean oldMcFunctionESet = this.mcFunctionESet;
        this.mcFunction = "";
        this.mcFunctionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldMcFunction, (Object)"", oldMcFunctionESet));
        }
    }

    @Override
    public boolean isSetMcFunction() {
        return this.mcFunctionESet;
    }

    @Override
    public Boolean getSwIsVirtual() {
        return this.swIsVirtual;
    }

    @Override
    public void setSwIsVirtual(Boolean newSwIsVirtual) {
        Boolean oldSwIsVirtual = this.swIsVirtual;
        this.swIsVirtual = newSwIsVirtual;
        boolean oldSwIsVirtualESet = this.swIsVirtualESet;
        this.swIsVirtualESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldSwIsVirtual, (Object)this.swIsVirtual, !oldSwIsVirtualESet));
        }
    }

    @Override
    public void unsetSwIsVirtual() {
        Boolean oldSwIsVirtual = this.swIsVirtual;
        boolean oldSwIsVirtualESet = this.swIsVirtualESet;
        this.swIsVirtual = SW_IS_VIRTUAL_EDEFAULT;
        this.swIsVirtualESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldSwIsVirtual, (Object)SW_IS_VIRTUAL_EDEFAULT, oldSwIsVirtualESet));
        }
    }

    @Override
    public boolean isSetSwIsVirtual() {
        return this.swIsVirtualESet;
    }

    @Override
    public SwPointerTargetProps getSwPointerTargetProps() {
        return this.swPointerTargetProps;
    }

    public NotificationChain basicSetSwPointerTargetProps(SwPointerTargetProps newSwPointerTargetProps, NotificationChain msgs) {
        SwPointerTargetProps oldSwPointerTargetProps = this.swPointerTargetProps;
        this.swPointerTargetProps = newSwPointerTargetProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldSwPointerTargetProps, (Object)newSwPointerTargetProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwPointerTargetProps(SwPointerTargetProps newSwPointerTargetProps) {
        if (newSwPointerTargetProps != this.swPointerTargetProps) {
            NotificationChain msgs = null;
            if (this.swPointerTargetProps != null) {
                msgs = ((InternalEObject)this.swPointerTargetProps).eInverseRemove((InternalEObject)this, 4, SwPointerTargetProps.class, msgs);
            }
            if (newSwPointerTargetProps != null) {
                msgs = ((InternalEObject)newSwPointerTargetProps).eInverseAdd((InternalEObject)this, 4, SwPointerTargetProps.class, msgs);
            }
            if ((msgs = this.basicSetSwPointerTargetProps(newSwPointerTargetProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)newSwPointerTargetProps, (Object)newSwPointerTargetProps));
        }
    }

    @Override
    public SwRecordLayout getSwRecordLayout() {
        if (this.swRecordLayout != null && this.swRecordLayout.eIsProxy()) {
            InternalEObject oldSwRecordLayout = (InternalEObject)this.swRecordLayout;
            this.swRecordLayout = (SwRecordLayout)this.eResolveProxy(oldSwRecordLayout);
            if (this.swRecordLayout != oldSwRecordLayout && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 28, (Object)oldSwRecordLayout, (Object)this.swRecordLayout));
            }
        }
        return this.swRecordLayout;
    }

    public SwRecordLayout basicGetSwRecordLayout() {
        return this.swRecordLayout;
    }

    @Override
    public void setSwRecordLayout(SwRecordLayout newSwRecordLayout) {
        SwRecordLayout oldSwRecordLayout = this.swRecordLayout;
        this.swRecordLayout = newSwRecordLayout;
        AutosarObjectUtil.setDest((EObject)this, (int)28, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldSwRecordLayout, (Object)this.swRecordLayout));
        }
    }

    @Override
    public MultidimensionalTime getSwRefreshTiming() {
        return this.swRefreshTiming;
    }

    public NotificationChain basicSetSwRefreshTiming(MultidimensionalTime newSwRefreshTiming, NotificationChain msgs) {
        MultidimensionalTime oldSwRefreshTiming = this.swRefreshTiming;
        this.swRefreshTiming = newSwRefreshTiming;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldSwRefreshTiming, (Object)newSwRefreshTiming);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwRefreshTiming(MultidimensionalTime newSwRefreshTiming) {
        if (newSwRefreshTiming != this.swRefreshTiming) {
            NotificationChain msgs = null;
            if (this.swRefreshTiming != null) {
                msgs = ((InternalEObject)this.swRefreshTiming).eInverseRemove((InternalEObject)this, -30, null, msgs);
            }
            if (newSwRefreshTiming != null) {
                msgs = ((InternalEObject)newSwRefreshTiming).eInverseAdd((InternalEObject)this, -30, null, msgs);
            }
            if ((msgs = this.basicSetSwRefreshTiming(newSwRefreshTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)newSwRefreshTiming, (Object)newSwRefreshTiming));
        }
    }

    @Override
    public Unit getUnit() {
        if (this.unit != null && this.unit.eIsProxy()) {
            InternalEObject oldUnit = (InternalEObject)this.unit;
            this.unit = (Unit)this.eResolveProxy(oldUnit);
            if (this.unit != oldUnit && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 30, (Object)oldUnit, (Object)this.unit));
            }
        }
        return this.unit;
    }

    public Unit basicGetUnit() {
        return this.unit;
    }

    @Override
    public void setUnit(Unit newUnit) {
        Unit oldUnit = this.unit;
        this.unit = newUnit;
        AutosarObjectUtil.setDest((EObject)this, (int)30, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldUnit, (Object)this.unit));
        }
    }

    @Override
    public ApplicationPrimitiveDataType getValueAxisDataType() {
        if (this.valueAxisDataType != null && this.valueAxisDataType.eIsProxy()) {
            InternalEObject oldValueAxisDataType = (InternalEObject)this.valueAxisDataType;
            this.valueAxisDataType = (ApplicationPrimitiveDataType)this.eResolveProxy(oldValueAxisDataType);
            if (this.valueAxisDataType != oldValueAxisDataType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 31, (Object)oldValueAxisDataType, (Object)this.valueAxisDataType));
            }
        }
        return this.valueAxisDataType;
    }

    public ApplicationPrimitiveDataType basicGetValueAxisDataType() {
        return this.valueAxisDataType;
    }

    @Override
    public void setValueAxisDataType(ApplicationPrimitiveDataType newValueAxisDataType) {
        ApplicationPrimitiveDataType oldValueAxisDataType = this.valueAxisDataType;
        this.valueAxisDataType = newValueAxisDataType;
        AutosarObjectUtil.setDest((EObject)this, (int)31, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldValueAxisDataType, (Object)this.valueAxisDataType));
        }
    }

    @Override
    public float getSwIntendedResolutionAsFloat() {
        return RadixConverter.parseFloat((String)this.getSwIntendedResolution());
    }

    @Override
    public int getSwIntendedResolutionAsInteger() {
        return RadixConverter.parseInt((String)this.getSwIntendedResolution());
    }

    @Override
    public int getRadixForSwIntendedResolution() {
        return RadixConverter.getRadix((String)this.getSwIntendedResolution());
    }

    @Override
    public void setSwIntendedResolution(int radix, String value) {
        String convertedValue = RadixConverter.convert((String)value, (int)radix);
        this.setSwIntendedResolution(convertedValue);
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                if (this.swBitRepresentation != null) {
                    msgs = ((InternalEObject)this.swBitRepresentation).eInverseRemove((InternalEObject)this, -9, null, msgs);
                }
                return this.basicSetSwBitRepresentation((SwBitRepresentation)otherEnd, msgs);
            }
            case 11: {
                if (this.swCalprmAxisSet != null) {
                    msgs = ((InternalEObject)this.swCalprmAxisSet).eInverseRemove((InternalEObject)this, -12, null, msgs);
                }
                return this.basicSetSwCalprmAxisSet((SwCalprmAxisSet)otherEnd, msgs);
            }
            case 12: {
                if (this.swTextProps != null) {
                    msgs = ((InternalEObject)this.swTextProps).eInverseRemove((InternalEObject)this, -13, null, msgs);
                }
                return this.basicSetSwTextProps((SwTextProps)otherEnd, msgs);
            }
            case 16: {
                if (this.swDataDependency != null) {
                    msgs = ((InternalEObject)this.swDataDependency).eInverseRemove((InternalEObject)this, -17, null, msgs);
                }
                return this.basicSetSwDataDependency((SwDataDependency)otherEnd, msgs);
            }
            case 27: {
                if (this.swPointerTargetProps != null) {
                    msgs = ((InternalEObject)this.swPointerTargetProps).eInverseRemove((InternalEObject)this, -28, null, msgs);
                }
                return this.basicSetSwPointerTargetProps((SwPointerTargetProps)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
            case 8: {
                return this.basicSetSwBitRepresentation(null, msgs);
            }
            case 10: {
                return this.basicSetSwValueBlockSize(null, msgs);
            }
            case 11: {
                return this.basicSetSwCalprmAxisSet(null, msgs);
            }
            case 12: {
                return this.basicSetSwTextProps(null, msgs);
            }
            case 13: {
                return ((InternalEList)this.getSwComparisonVariables()).basicRemove((Object)otherEnd, msgs);
            }
            case 16: {
                return this.basicSetSwDataDependency(null, msgs);
            }
            case 19: {
                return this.basicSetSwHostVariable(null, msgs);
            }
            case 24: {
                return this.basicSetInvalidValue(null, msgs);
            }
            case 27: {
                return this.basicSetSwPointerTargetProps(null, msgs);
            }
            case 29: {
                return this.basicSetSwRefreshTiming(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAnnotations();
            }
            case 5: {
                if (resolve) {
                    return this.getSwAddrMethod();
                }
                return this.basicGetSwAddrMethod();
            }
            case 6: {
                return this.getSwAlignment();
            }
            case 7: {
                if (resolve) {
                    return this.getBaseType();
                }
                return this.basicGetBaseType();
            }
            case 8: {
                return this.getSwBitRepresentation();
            }
            case 9: {
                return this.getSwCalibrationAccess();
            }
            case 10: {
                return this.getSwValueBlockSize();
            }
            case 11: {
                return this.getSwCalprmAxisSet();
            }
            case 12: {
                return this.getSwTextProps();
            }
            case 13: {
                return this.getSwComparisonVariables();
            }
            case 14: {
                if (resolve) {
                    return this.getCompuMethod();
                }
                return this.basicGetCompuMethod();
            }
            case 15: {
                if (resolve) {
                    return this.getDataConstr();
                }
                return this.basicGetDataConstr();
            }
            case 16: {
                return this.getSwDataDependency();
            }
            case 17: {
                return this.getDisplayFormat();
            }
            case 18: {
                if (resolve) {
                    return this.getImplementationDataType();
                }
                return this.basicGetImplementationDataType();
            }
            case 19: {
                return this.getSwHostVariable();
            }
            case 20: {
                return this.getSwImplPolicy();
            }
            case 21: {
                return this.getAdditionalNativeTypeQualifier();
            }
            case 22: {
                return this.getSwIntendedResolution();
            }
            case 23: {
                return this.getSwInterpolationMethod();
            }
            case 24: {
                return this.getInvalidValue();
            }
            case 25: {
                return this.getMcFunction();
            }
            case 26: {
                return this.getSwIsVirtual();
            }
            case 27: {
                return this.getSwPointerTargetProps();
            }
            case 28: {
                if (resolve) {
                    return this.getSwRecordLayout();
                }
                return this.basicGetSwRecordLayout();
            }
            case 29: {
                return this.getSwRefreshTiming();
            }
            case 30: {
                if (resolve) {
                    return this.getUnit();
                }
                return this.basicGetUnit();
            }
            case 31: {
                if (resolve) {
                    return this.getValueAxisDataType();
                }
                return this.basicGetValueAxisDataType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getAnnotations().clear();
                this.getAnnotations().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.setSwAddrMethod((SwAddrMethod)newValue);
                return;
            }
            case 6: {
                this.setSwAlignment((String)newValue);
                return;
            }
            case 7: {
                this.setBaseType((SwBaseType)newValue);
                return;
            }
            case 8: {
                this.setSwBitRepresentation((SwBitRepresentation)newValue);
                return;
            }
            case 9: {
                this.setSwCalibrationAccess((SwCalibrationAccessEnum)((Object)newValue));
                return;
            }
            case 10: {
                this.setSwValueBlockSize((NumericalValueVariationPoint)newValue);
                return;
            }
            case 11: {
                this.setSwCalprmAxisSet((SwCalprmAxisSet)newValue);
                return;
            }
            case 12: {
                this.setSwTextProps((SwTextProps)newValue);
                return;
            }
            case 13: {
                this.getSwComparisonVariables().clear();
                this.getSwComparisonVariables().addAll((Collection)newValue);
                return;
            }
            case 14: {
                this.setCompuMethod((CompuMethod)newValue);
                return;
            }
            case 15: {
                this.setDataConstr((DataConstr)newValue);
                return;
            }
            case 16: {
                this.setSwDataDependency((SwDataDependency)newValue);
                return;
            }
            case 17: {
                this.setDisplayFormat((String)newValue);
                return;
            }
            case 18: {
                this.setImplementationDataType((ImplementationDataType)newValue);
                return;
            }
            case 19: {
                this.setSwHostVariable((SwVariableRefProxy)newValue);
                return;
            }
            case 20: {
                this.setSwImplPolicy((SwImplPolicyEnum)((Object)newValue));
                return;
            }
            case 21: {
                this.setAdditionalNativeTypeQualifier((String)newValue);
                return;
            }
            case 22: {
                this.setSwIntendedResolution((String)newValue);
                return;
            }
            case 23: {
                this.setSwInterpolationMethod((String)newValue);
                return;
            }
            case 24: {
                this.setInvalidValue((ValueSpecification)newValue);
                return;
            }
            case 25: {
                this.setMcFunction((String)newValue);
                return;
            }
            case 26: {
                this.setSwIsVirtual((Boolean)newValue);
                return;
            }
            case 27: {
                this.setSwPointerTargetProps((SwPointerTargetProps)newValue);
                return;
            }
            case 28: {
                this.setSwRecordLayout((SwRecordLayout)newValue);
                return;
            }
            case 29: {
                this.setSwRefreshTiming((MultidimensionalTime)newValue);
                return;
            }
            case 30: {
                this.setUnit((Unit)newValue);
                return;
            }
            case 31: {
                this.setValueAxisDataType((ApplicationPrimitiveDataType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getAnnotations().clear();
                return;
            }
            case 5: {
                this.setSwAddrMethod(null);
                return;
            }
            case 6: {
                this.unsetSwAlignment();
                return;
            }
            case 7: {
                this.setBaseType(null);
                return;
            }
            case 8: {
                this.setSwBitRepresentation(null);
                return;
            }
            case 9: {
                this.unsetSwCalibrationAccess();
                return;
            }
            case 10: {
                this.setSwValueBlockSize(null);
                return;
            }
            case 11: {
                this.setSwCalprmAxisSet(null);
                return;
            }
            case 12: {
                this.setSwTextProps(null);
                return;
            }
            case 13: {
                this.getSwComparisonVariables().clear();
                return;
            }
            case 14: {
                this.setCompuMethod(null);
                return;
            }
            case 15: {
                this.setDataConstr(null);
                return;
            }
            case 16: {
                this.setSwDataDependency(null);
                return;
            }
            case 17: {
                this.unsetDisplayFormat();
                return;
            }
            case 18: {
                this.setImplementationDataType(null);
                return;
            }
            case 19: {
                this.setSwHostVariable(null);
                return;
            }
            case 20: {
                this.unsetSwImplPolicy();
                return;
            }
            case 21: {
                this.unsetAdditionalNativeTypeQualifier();
                return;
            }
            case 22: {
                this.unsetSwIntendedResolution();
                return;
            }
            case 23: {
                this.unsetSwInterpolationMethod();
                return;
            }
            case 24: {
                this.setInvalidValue(null);
                return;
            }
            case 25: {
                this.unsetMcFunction();
                return;
            }
            case 26: {
                this.unsetSwIsVirtual();
                return;
            }
            case 27: {
                this.setSwPointerTargetProps(null);
                return;
            }
            case 28: {
                this.setSwRecordLayout(null);
                return;
            }
            case 29: {
                this.setSwRefreshTiming(null);
                return;
            }
            case 30: {
                this.setUnit(null);
                return;
            }
            case 31: {
                this.setValueAxisDataType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.annotations != null && !this.annotations.isEmpty();
            }
            case 5: {
                return this.swAddrMethod != null;
            }
            case 6: {
                return this.isSetSwAlignment();
            }
            case 7: {
                return this.baseType != null;
            }
            case 8: {
                return this.swBitRepresentation != null;
            }
            case 9: {
                return this.isSetSwCalibrationAccess();
            }
            case 10: {
                return this.swValueBlockSize != null;
            }
            case 11: {
                return this.swCalprmAxisSet != null;
            }
            case 12: {
                return this.swTextProps != null;
            }
            case 13: {
                return this.swComparisonVariables != null && !this.swComparisonVariables.isEmpty();
            }
            case 14: {
                return this.compuMethod != null;
            }
            case 15: {
                return this.dataConstr != null;
            }
            case 16: {
                return this.swDataDependency != null;
            }
            case 17: {
                return this.isSetDisplayFormat();
            }
            case 18: {
                return this.implementationDataType != null;
            }
            case 19: {
                return this.swHostVariable != null;
            }
            case 20: {
                return this.isSetSwImplPolicy();
            }
            case 21: {
                return this.isSetAdditionalNativeTypeQualifier();
            }
            case 22: {
                return this.isSetSwIntendedResolution();
            }
            case 23: {
                return this.isSetSwInterpolationMethod();
            }
            case 24: {
                return this.invalidValue != null;
            }
            case 25: {
                return this.isSetMcFunction();
            }
            case 26: {
                return this.isSetSwIsVirtual();
            }
            case 27: {
                return this.swPointerTargetProps != null;
            }
            case 28: {
                return this.swRecordLayout != null;
            }
            case 29: {
                return this.swRefreshTiming != null;
            }
            case 30: {
                return this.unit != null;
            }
            case 31: {
                return this.valueAxisDataType != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (swAlignment: ");
        if (this.swAlignmentESet) {
            result.append(this.swAlignment);
        } else {
            result.append("<unset>");
        }
        result.append(", swCalibrationAccess: ");
        if (this.swCalibrationAccessESet) {
            result.append((Object)this.swCalibrationAccess);
        } else {
            result.append("<unset>");
        }
        result.append(", displayFormat: ");
        if (this.displayFormatESet) {
            result.append(this.displayFormat);
        } else {
            result.append("<unset>");
        }
        result.append(", swImplPolicy: ");
        if (this.swImplPolicyESet) {
            result.append((Object)this.swImplPolicy);
        } else {
            result.append("<unset>");
        }
        result.append(", additionalNativeTypeQualifier: ");
        if (this.additionalNativeTypeQualifierESet) {
            result.append(this.additionalNativeTypeQualifier);
        } else {
            result.append("<unset>");
        }
        result.append(", swIntendedResolution: ");
        if (this.swIntendedResolutionESet) {
            result.append(this.swIntendedResolution);
        } else {
            result.append("<unset>");
        }
        result.append(", swInterpolationMethod: ");
        if (this.swInterpolationMethodESet) {
            result.append(this.swInterpolationMethod);
        } else {
            result.append("<unset>");
        }
        result.append(", mcFunction: ");
        if (this.mcFunctionESet) {
            result.append(this.mcFunction);
        } else {
            result.append("<unset>");
        }
        result.append(", swIsVirtual: ");
        if (this.swIsVirtualESet) {
            result.append(this.swIsVirtual);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}


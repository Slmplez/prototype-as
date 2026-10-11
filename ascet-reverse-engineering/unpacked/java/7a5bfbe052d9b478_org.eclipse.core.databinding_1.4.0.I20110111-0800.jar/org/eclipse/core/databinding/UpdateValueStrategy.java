/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.databinding;

import java.util.HashMap;
import org.eclipse.core.databinding.UpdateStrategy;
import org.eclipse.core.databinding.conversion.IConverter;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.validation.IValidator;
import org.eclipse.core.databinding.validation.ValidationStatus;
import org.eclipse.core.internal.databinding.BindingMessages;
import org.eclipse.core.internal.databinding.Pair;
import org.eclipse.core.internal.databinding.conversion.NumberToBigDecimalConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToBigIntegerConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToByteConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToDoubleConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToFloatConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToIntegerConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToLongConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToNumberConverter;
import org.eclipse.core.internal.databinding.conversion.NumberToShortConverter;
import org.eclipse.core.internal.databinding.conversion.StringToCharacterConverter;
import org.eclipse.core.internal.databinding.conversion.StringToDateConverter;
import org.eclipse.core.internal.databinding.validation.NumberFormatConverter;
import org.eclipse.core.internal.databinding.validation.NumberToByteValidator;
import org.eclipse.core.internal.databinding.validation.NumberToDoubleValidator;
import org.eclipse.core.internal.databinding.validation.NumberToFloatValidator;
import org.eclipse.core.internal.databinding.validation.NumberToIntegerValidator;
import org.eclipse.core.internal.databinding.validation.NumberToLongValidator;
import org.eclipse.core.internal.databinding.validation.NumberToShortValidator;
import org.eclipse.core.internal.databinding.validation.NumberToUnboundedNumberValidator;
import org.eclipse.core.internal.databinding.validation.ObjectToPrimitiveValidator;
import org.eclipse.core.internal.databinding.validation.StringToByteValidator;
import org.eclipse.core.internal.databinding.validation.StringToCharacterValidator;
import org.eclipse.core.internal.databinding.validation.StringToDateValidator;
import org.eclipse.core.internal.databinding.validation.StringToDoubleValidator;
import org.eclipse.core.internal.databinding.validation.StringToFloatValidator;
import org.eclipse.core.internal.databinding.validation.StringToIntegerValidator;
import org.eclipse.core.internal.databinding.validation.StringToLongValidator;
import org.eclipse.core.internal.databinding.validation.StringToShortValidator;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public class UpdateValueStrategy
extends UpdateStrategy {
    public static int POLICY_NEVER = UpdateValueStrategy.notInlined(1);
    public static int POLICY_ON_REQUEST = UpdateValueStrategy.notInlined(2);
    public static int POLICY_CONVERT = UpdateValueStrategy.notInlined(4);
    public static int POLICY_UPDATE = UpdateValueStrategy.notInlined(8);
    protected IValidator afterGetValidator;
    protected IValidator afterConvertValidator;
    protected IValidator beforeSetValidator;
    protected IConverter converter;
    private int updatePolicy;
    private static ValidatorRegistry validatorRegistry = new ValidatorRegistry();
    private static HashMap validatorsByConverter = new HashMap();
    protected boolean provideDefaults;
    private boolean defaultedConverter = false;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;
    static /* synthetic */ Class class$9;
    static /* synthetic */ Class class$10;

    private static int notInlined(int i) {
        return i;
    }

    public UpdateValueStrategy() {
        this(true, POLICY_UPDATE);
    }

    public UpdateValueStrategy(int updatePolicy) {
        this(true, updatePolicy);
    }

    public UpdateValueStrategy(boolean provideDefaults, int updatePolicy) {
        this.provideDefaults = provideDefaults;
        this.updatePolicy = updatePolicy;
    }

    public Object convert(Object value) {
        return this.converter == null ? value : this.converter.convert(value);
    }

    protected IValidator createValidator(Object fromType, Object toType) {
        if (fromType == null || toType == null) {
            return new IValidator(){

                public IStatus validate(Object value) {
                    return Status.OK_STATUS;
                }
            };
        }
        return this.findValidator(fromType, toType);
    }

    protected void fillDefaults(IObservableValue source, IObservableValue destination) {
        Object sourceType = source.getValueType();
        Object destinationType = destination.getValueType();
        if (this.provideDefaults && sourceType != null && destinationType != null) {
            if (this.converter == null) {
                IConverter converter = this.createConverter(sourceType, destinationType);
                this.defaultedConverter = converter != null;
                this.setConverter(converter);
            }
            if (this.afterGetValidator == null) {
                this.afterGetValidator = this.createValidator(sourceType, destinationType);
            }
        }
        if (this.converter != null) {
            if (sourceType != null) {
                this.checkAssignable(this.converter.getFromType(), sourceType, "converter does not convert from type " + sourceType);
            }
            if (destinationType != null) {
                this.checkAssignable(destinationType, this.converter.getToType(), "converter does not convert to type " + destinationType);
            }
        }
    }

    private IValidator findValidator(Object fromType, Object toType) {
        IValidator result = null;
        if (this.defaultedConverter) {
            Class<?> clazz = class$8;
            if (clazz == null) {
                try {
                    clazz = class$8 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz.equals(fromType)) {
                result = (IValidator)validatorsByConverter.get(this.converter);
                if (result == null) {
                    Class<?> clazz2 = class$0;
                    if (clazz2 == null) {
                        try {
                            clazz2 = class$0 = Class.forName("java.lang.Integer");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    if (clazz2.equals(toType) || Integer.TYPE.equals(toType)) {
                        result = new StringToIntegerValidator((NumberFormatConverter)this.converter);
                    } else {
                        Class<?> clazz3 = class$3;
                        if (clazz3 == null) {
                            try {
                                clazz3 = class$3 = Class.forName("java.lang.Long");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        if (clazz3.equals(toType) || Long.TYPE.equals(toType)) {
                            result = new StringToLongValidator((NumberFormatConverter)this.converter);
                        } else {
                            Class<?> clazz4 = class$4;
                            if (clazz4 == null) {
                                try {
                                    clazz4 = class$4 = Class.forName("java.lang.Float");
                                }
                                catch (ClassNotFoundException classNotFoundException) {
                                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                }
                            }
                            if (clazz4.equals(toType) || Float.TYPE.equals(toType)) {
                                result = new StringToFloatValidator((NumberFormatConverter)this.converter);
                            } else {
                                Class<?> clazz5 = class$5;
                                if (clazz5 == null) {
                                    try {
                                        clazz5 = class$5 = Class.forName("java.lang.Double");
                                    }
                                    catch (ClassNotFoundException classNotFoundException) {
                                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                    }
                                }
                                if (clazz5.equals(toType) || Double.TYPE.equals(toType)) {
                                    result = new StringToDoubleValidator((NumberFormatConverter)this.converter);
                                } else {
                                    Class<?> clazz6 = class$1;
                                    if (clazz6 == null) {
                                        try {
                                            clazz6 = class$1 = Class.forName("java.lang.Byte");
                                        }
                                        catch (ClassNotFoundException classNotFoundException) {
                                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                        }
                                    }
                                    if (clazz6.equals(toType) || Byte.TYPE.equals(toType)) {
                                        result = new StringToByteValidator((NumberFormatConverter)this.converter);
                                    } else {
                                        Class<?> clazz7 = class$2;
                                        if (clazz7 == null) {
                                            try {
                                                clazz7 = class$2 = Class.forName("java.lang.Short");
                                            }
                                            catch (ClassNotFoundException classNotFoundException) {
                                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                            }
                                        }
                                        if (clazz7.equals(toType) || Short.TYPE.equals(toType)) {
                                            result = new StringToShortValidator((NumberFormatConverter)this.converter);
                                        } else {
                                            Class<?> clazz8 = class$9;
                                            if (clazz8 == null) {
                                                try {
                                                    clazz8 = class$9 = Class.forName("java.lang.Character");
                                                }
                                                catch (ClassNotFoundException classNotFoundException) {
                                                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                                }
                                            }
                                            if (clazz8.equals(toType) || Character.TYPE.equals(toType) && this.converter instanceof StringToCharacterConverter) {
                                                result = new StringToCharacterValidator((StringToCharacterConverter)this.converter);
                                            } else {
                                                Class<?> clazz9 = class$10;
                                                if (clazz9 == null) {
                                                    try {
                                                        clazz9 = class$10 = Class.forName("java.util.Date");
                                                    }
                                                    catch (ClassNotFoundException classNotFoundException) {
                                                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                                    }
                                                }
                                                if (clazz9.equals(toType) && this.converter instanceof StringToDateConverter) {
                                                    result = new StringToDateValidator((StringToDateConverter)this.converter);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (result != null) {
                        validatorsByConverter.put(this.converter, result);
                    }
                }
            } else if (this.converter instanceof NumberToNumberConverter && (result = (IValidator)validatorsByConverter.get(this.converter)) == null) {
                if (this.converter instanceof NumberToByteConverter) {
                    result = new NumberToByteValidator((NumberToByteConverter)this.converter);
                } else if (this.converter instanceof NumberToShortConverter) {
                    result = new NumberToShortValidator((NumberToShortConverter)this.converter);
                } else if (this.converter instanceof NumberToIntegerConverter) {
                    result = new NumberToIntegerValidator((NumberToIntegerConverter)this.converter);
                } else if (this.converter instanceof NumberToLongConverter) {
                    result = new NumberToLongValidator((NumberToLongConverter)this.converter);
                } else if (this.converter instanceof NumberToFloatConverter) {
                    result = new NumberToFloatValidator((NumberToFloatConverter)this.converter);
                } else if (this.converter instanceof NumberToDoubleConverter) {
                    result = new NumberToDoubleValidator((NumberToDoubleConverter)this.converter);
                } else if (this.converter instanceof NumberToBigIntegerConverter || this.converter instanceof NumberToBigDecimalConverter) {
                    result = new NumberToUnboundedNumberValidator((NumberToNumberConverter)this.converter);
                }
            }
            if (result == null) {
                result = UpdateValueStrategy.validatorRegistry.get(fromType, toType);
            }
        }
        return result;
    }

    public int getUpdatePolicy() {
        return this.updatePolicy;
    }

    public UpdateValueStrategy setAfterConvertValidator(IValidator validator) {
        this.afterConvertValidator = validator;
        return this;
    }

    public UpdateValueStrategy setAfterGetValidator(IValidator validator) {
        this.afterGetValidator = validator;
        return this;
    }

    public UpdateValueStrategy setBeforeSetValidator(IValidator validator) {
        this.beforeSetValidator = validator;
        return this;
    }

    public UpdateValueStrategy setConverter(IConverter converter) {
        this.converter = converter;
        return this;
    }

    public IStatus validateAfterConvert(Object value) {
        return this.afterConvertValidator == null ? Status.OK_STATUS : this.afterConvertValidator.validate(value);
    }

    public IStatus validateAfterGet(Object value) {
        return this.afterGetValidator == null ? Status.OK_STATUS : this.afterGetValidator.validate(value);
    }

    public IStatus validateBeforeSet(Object value) {
        return this.beforeSetValidator == null ? Status.OK_STATUS : this.beforeSetValidator.validate(value);
    }

    protected IStatus doSet(IObservableValue observableValue, Object value) {
        try {
            observableValue.setValue(value);
        }
        catch (Exception ex) {
            return ValidationStatus.error(BindingMessages.getString("ValueBinding_ErrorWhileSettingValue"), ex);
        }
        return Status.OK_STATUS;
    }

    private static class ValidatorRegistry {
        private HashMap validators = new HashMap();

        private ValidatorRegistry() {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.Integer");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.associate(clazz, Integer.TYPE, new ObjectToPrimitiveValidator(Integer.TYPE));
            Class<?> clazz2 = class$1;
            if (clazz2 == null) {
                try {
                    clazz2 = class$1 = Class.forName("java.lang.Byte");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.associate(clazz2, Byte.TYPE, new ObjectToPrimitiveValidator(Byte.TYPE));
            Class<?> clazz3 = class$2;
            if (clazz3 == null) {
                try {
                    clazz3 = class$2 = Class.forName("java.lang.Short");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.associate(clazz3, Short.TYPE, new ObjectToPrimitiveValidator(Short.TYPE));
            Class<?> clazz4 = class$3;
            if (clazz4 == null) {
                try {
                    clazz4 = class$3 = Class.forName("java.lang.Long");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.associate(clazz4, Long.TYPE, new ObjectToPrimitiveValidator(Long.TYPE));
            Class<?> clazz5 = class$4;
            if (clazz5 == null) {
                try {
                    clazz5 = class$4 = Class.forName("java.lang.Float");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.associate(clazz5, Float.TYPE, new ObjectToPrimitiveValidator(Float.TYPE));
            Class<?> clazz6 = class$5;
            if (clazz6 == null) {
                try {
                    clazz6 = class$5 = Class.forName("java.lang.Double");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.associate(clazz6, Double.TYPE, new ObjectToPrimitiveValidator(Double.TYPE));
            Class<?> clazz7 = class$6;
            if (clazz7 == null) {
                try {
                    clazz7 = class$6 = Class.forName("java.lang.Boolean");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.associate(clazz7, Boolean.TYPE, new ObjectToPrimitiveValidator(Boolean.TYPE));
            Class<?> clazz8 = class$7;
            if (clazz8 == null) {
                try {
                    clazz8 = class$7 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.associate(clazz8, Integer.TYPE, new ObjectToPrimitiveValidator(Integer.TYPE));
            Class<?> clazz9 = class$7;
            if (clazz9 == null) {
                try {
                    clazz9 = class$7 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.associate(clazz9, Byte.TYPE, new ObjectToPrimitiveValidator(Byte.TYPE));
            Class<?> clazz10 = class$7;
            if (clazz10 == null) {
                try {
                    clazz10 = class$7 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.associate(clazz10, Short.TYPE, new ObjectToPrimitiveValidator(Short.TYPE));
            Class<?> clazz11 = class$7;
            if (clazz11 == null) {
                try {
                    clazz11 = class$7 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.associate(clazz11, Long.TYPE, new ObjectToPrimitiveValidator(Long.TYPE));
            Class<?> clazz12 = class$7;
            if (clazz12 == null) {
                try {
                    clazz12 = class$7 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.associate(clazz12, Float.TYPE, new ObjectToPrimitiveValidator(Float.TYPE));
            Class<?> clazz13 = class$7;
            if (clazz13 == null) {
                try {
                    clazz13 = class$7 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.associate(clazz13, Double.TYPE, new ObjectToPrimitiveValidator(Double.TYPE));
            Class<?> clazz14 = class$7;
            if (clazz14 == null) {
                try {
                    clazz14 = class$7 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.associate(clazz14, Boolean.TYPE, new ObjectToPrimitiveValidator(Boolean.TYPE));
        }

        private void associate(Object fromClass, Object toClass, IValidator validator) {
            this.validators.put(new Pair(fromClass, toClass), validator);
        }

        private IValidator get(Object fromClass, Object toClass) {
            IValidator result = (IValidator)this.validators.get(new Pair(fromClass, toClass));
            if (result != null) {
                return result;
            }
            if (fromClass != null && toClass != null && fromClass == toClass) {
                return new IValidator(this){
                    final /* synthetic */ ValidatorRegistry this$1;
                    {
                        this.this$1 = validatorRegistry;
                    }

                    public IStatus validate(Object value) {
                        return Status.OK_STATUS;
                    }
                };
            }
            return new IValidator(this){
                final /* synthetic */ ValidatorRegistry this$1;
                {
                    this.this$1 = validatorRegistry;
                }

                public IStatus validate(Object value) {
                    return Status.OK_STATUS;
                }
            };
        }
    }
}


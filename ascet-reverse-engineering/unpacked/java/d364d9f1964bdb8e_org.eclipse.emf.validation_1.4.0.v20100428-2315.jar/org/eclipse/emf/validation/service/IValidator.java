/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.emf.validation.service;

import java.util.Collection;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.validation.model.EvaluationMode;
import org.eclipse.emf.validation.service.IConstraintFilter;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IValidator<T> {
    public static final Option<Boolean> OPTION_REPORT_SUCCESSES = Option.make(false);

    public EvaluationMode<T> getEvaluationMode();

    public boolean isReportSuccesses();

    public void setReportSuccesses(boolean var1);

    public void putClientData(String var1, Object var2);

    public Object getClientData(String var1);

    public IStatus validate(T var1);

    public IStatus validate(Collection<? extends T> var1);

    public void addConstraintFilter(IConstraintFilter var1);

    public void removeConstraintFilter(IConstraintFilter var1);

    public Collection<IConstraintFilter> getConstraintFilters();

    public Map<Option<?>, ?> getOptions();

    public void setOptions(Map<Option<?>, ?> var1);

    public <V> V getOption(Option<V> var1);

    public <V> void setOption(Option<? super V> var1, V var2);

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Option<V> {
        private final V default_;

        static <V> Option<V> make(V defaultValue) {
            return new Option<V>(defaultValue);
        }

        protected Option(V defaultValue) {
            this.default_ = defaultValue;
        }

        public V defaultValue(IValidator<?> validator) {
            return this.default_;
        }
    }
}


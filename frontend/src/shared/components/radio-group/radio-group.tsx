
'use client'

import classNames from "classnames";
import { useId } from "react";

type RadioOptionProps = { label: string; value: string, checked: boolean, onChange: (value: string) => void };

export type Props = {
  label: string;
  validationMessage?: string;
  vertical?: boolean;
  required?: boolean;
  children: React.ReactNode
};

function RadioOption({ label, value, checked, onChange }: RadioOptionProps) {
  const id = useId();

  return (
    <div className="flex items-center">
      <input
        id={id}
        className="w-4 h-4 text-primary focus:ring-primary dark:focus:ring-primary dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700"
        type="radio"
        value={value}
        checked={checked}
        onChange={(e) => onChange(e.target.value)}
      />
      <label htmlFor={id} className="w-full py-4 ml-2 text-sm font-medium">{label}</label>
    </div>
  )
}

function RadioGroup({ label, required, validationMessage, vertical, children }: Props) {
  return (
    <div className="inline-flex flex-col">
      <label className='mb-2'>{label}{required && '*'}</label>
      <div className={classNames("flex gap-6", vertical && "flex-col")}>
        {children}
      </div>
      {validationMessage && <span className='text-sm text-red-500 pt-1'>{validationMessage}</span>}
    </div>
  );
};

const Radio = {
  Group: RadioGroup,
  Option: RadioOption
}

export default Radio

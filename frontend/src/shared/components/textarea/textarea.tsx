'use client'

import { ChangeEventHandler, useId } from "react";

export type Props = {
  label: string;
  name?: string;
  value: string;
  placeholder?: string;
  validationMessage?: string;
  required?: boolean;
  onChange: ChangeEventHandler<HTMLTextAreaElement>;
};

export default function Textarea({ label, name, value, placeholder, required, validationMessage, onChange }: Props) {
  const id = useId();

  return (
    <div className='inline-flex flex-col'>
      <label htmlFor={id} className='mb-2'>{label}{required && '*'}</label>
      <textarea
        id={id}
        className='bg-tertiary rounded-lg py-4 px-3 border border-primary outline-primary'
        name={name}
        placeholder={placeholder}
        value={value}
        required={required}
        onChange={onChange}
      />
      {validationMessage && <span className='text-sm text-red-500 pt-1'>{validationMessage}</span>}
    </div>
  );
};

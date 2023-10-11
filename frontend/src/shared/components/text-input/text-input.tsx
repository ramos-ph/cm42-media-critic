'use client'

import classNames from 'classnames';
import { ChangeEventHandler, useId } from 'react';

export type Props = {
  label: string;
  name?: string;
  value: string;
  placeholder?: string;
  validationMessage?: string;
  required?: boolean;
  block?: boolean;
  onChange: ChangeEventHandler<HTMLInputElement>;
};

export default function TextInput({ label, name, value, placeholder, required, block, validationMessage, onChange }: Props) {
  const id = useId();

  return (
    <div className={classNames('inline-flex flex-col', block && 'w-full')}>
      <label htmlFor={id} className='mb-2'>{label}{required && '*'}</label>
      <input
        id={id}
        className='bg-tertiary rounded-lg py-4 px-3 border border-primary outline-primary'
        type='text'
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

import { useState } from 'react';
import { useQuery } from 'react-query';

function fetchHello() {
    return fetch('/api/hello').then(res => res.text());
}

export default function Home() {
    const { data, error, isLoading } = useQuery('hello', fetchHello);

    if (isLoading) return <div>Loading...</div>;
    if (error) return <div>An error occurred</div>;

    return <div>{data}</div>;
}
